require 'cms_lite/exceptions'
require 'fileutils'

class CmsLite
  CONTENT_PATH = 'content'
  PAGES_PATH = 'pages'
  PROTECTED_PAGES_PATH = 'protected-pages'
  LANGUAGES = %W{ar bg ca cs da de el en es fr hi id it ja pt-PT sk sr sv vi zh-CN} 
  
  class << self
    
    def cms_routes
      get_cms_routes(PAGES_PATH)
    end
    
    def protected_cms_routes
      get_cms_routes(PROTECTED_PAGES_PATH)
    end
    
    def get_cms_routes(pages_path)
      cms_routes = []
      cms_lite_page_path = File.join(RAILS_ROOT, CONTENT_PATH, pages_path)
      Dir.glob("#{cms_lite_page_path}/*").each do |localization_directory|
        if File.directory?(localization_directory)
          Dir.glob("#{localization_directory}/*").each do |content_item|
            path = File.basename(content_item)
            content_key = content_item.gsub(localization_directory, '')
            cms_routes << { :uri => "/#{path}/*content_page",
                            :content_key => content_key }
          end
        end
      end
      cms_routes
    end
    
    def translate_pages(language = 'en')
      translate_and_write_pages(File.join(RAILS_ROOT, CONTENT_PATH, PAGES_PATH, language), language)
      translate_and_write_pages(File.join(RAILS_ROOT, CONTENT_PATH, PROTECTED_PAGES_PATH, language), language)
    end
    
    def translate_and_write_pages(path, language)
      Dir.glob("#{path}/*").each do |next_file|
        if File.directory?(next_file)
          translate_and_write_pages(next_file, language)
        else
          LANGUAGES.each do |to|
            translate_and_write_page(next_file, to, language)
          end
        end
      end
    end
    
    def translate_and_write_page(page_path, to, from)
      return unless File.exist?(page_path)
      translated_filename = get_translated_file(page_path, to, from)
      return if File.exist?(translated_filename) # don't overwrite existing files
      text = IO.read(page_path)
      translated_text = translate(text, to, from)
      translated_directory = File.dirname(translated_filename)
      FileUtils.mkdir_p(translated_directory)
      File.open(translated_filename, 'w') { |f| f.write(translated_text) }
    end
    
    def get_translated_file(page, to, from)
      segments = page.split('/')
      index = segments.index(from)
      segments[index] = to
      segments.join('/')
    end
    
    # from: http://ruby.geraldbauer.ca/google-translation-api.html
    def translate(text, to, from = 'en')
      require 'cgi'
      require 'json'
      require 'net/http'

      base = 'http://ajax.googleapis.com/ajax/services/language/translate' 
      # assemble query params
      params = {
        :langpair => "#{from}|#{to}", 
        :q => text,
        :v => 1.0  
      }
      query = params.map{ |k,v| "#{k}=#{CGI.escape(v.to_s)}" }.join('&')
      # send get request
      response = Net::HTTP.get_response( URI.parse( "#{base}?#{query}" ) )
      json = JSON.parse( response.body )
      if json['responseStatus'] == 200
        json['responseData']['translatedText']
      else
        raise StandardError, response['responseDetails']
      end
    end
    
  end
end
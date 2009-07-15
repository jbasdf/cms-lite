require 'cms_lite/exceptions'
require 'cms_lite/languages'
require 'fileutils'
require 'babelphish'

class CmsLite
  CONTENT_PATH = 'content'
  PAGES_PATH = 'pages'
  PROTECTED_PAGES_PATH = 'protected-pages'
  
  class << self
    
    def cms_layouts=(layouts)
      @@layouts = layouts
    end
    
    def cms_layouts
      @@layouts
    end
    
    def cms_routes
      get_cms_routes(CONTENT_PATH, PAGES_PATH)
    end
    
    def protected_cms_routes
      get_cms_routes(CONTENT_PATH, PROTECTED_PAGES_PATH)
    end
    
    def get_cms_routes(content_path, pages_path)
      cms_routes = []
      cms_lite_page_path = File.join(RAILS_ROOT, content_path, pages_path)
      Dir.glob("#{cms_lite_page_path}/*").each do |localization_directory|
        if File.directory?(localization_directory)
          Dir.glob("#{localization_directory}/*").each do |content_item|
            path = File.basename(content_item)
            content_key = content_item.gsub(localization_directory, '')
            if !content_key.blank?
              cms_route = { :uri => "/#{path}/*content_page",
                            :content_key => content_key }
              if !cms_routes.include?(cms_route)
                cms_routes << cms_route
              end
            end
          end
        end
      end
      cms_routes
    end
    
    def content_paths
      @@content_paths ||= [CONTENT_PATH]
    end
    
    def append_content_path(path)
      @@content_paths << path
    end
    
    def prepend_content_path(path)
      @@content_paths.unshift(path)
    end
    
    def remove_content_path(path)
      content_paths.delete(path)
    end
    
    # This is a utitility method that makes sure the unprotected routes don't interfere with the proctected routes
    def check_routes
      bad_routes = []
      open_routes = cms_routes
      protected_routes = protected_cms_routes
      open_routes.each do |open_route|
        protected_routes.each do |protected_route|
          if open_route[:content_key] == protected_route[:content_key]
            bad_routes << open_route
          end
        end
      end
      bad_routes
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
          GoogleTranslate::LANGUAGES.each do |to|
            translate_and_write_page(next_file, to, language)
          end
        end
      end
    end
    
    def translate_and_write_page(page_path, to, from)
      return if to == from
      return unless File.exist?(page_path)
      translated_filename = get_translated_file(page_path, to, from)
      return if File.exist?(translated_filename) # don't overwrite existing files
      text = IO.read(page_path)
      translated_text = Babelphish::Translator.translate(text, to, from)
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

  end
end
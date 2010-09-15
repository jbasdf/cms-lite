module CmsLite
  
  class Translator
  
    class << self
        
      def translate_pages(language = 'en')
        translate_and_write_pages(File.join(::Rails.root.to_s, CmsLite.configuration.content_path, CmsLite::PAGES_PATH, language), language)
        translate_and_write_pages(File.join(::Rails.root.to_s, CmsLite.configuration.content_path, CmsLite::PROTECTED_PAGES_PATH, language), language)
      end
    
      def translate_and_write_pages(path, language)
        Dir.glob("#{path}/*").each do |next_file|
          if File.directory?(next_file)
            translate_and_write_pages(next_file, language)
          else
            CmsLite::GoogleTranslate::LANGUAGES.each do |to|
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
end
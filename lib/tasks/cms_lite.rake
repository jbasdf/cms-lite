require 'fileutils'

namespace :cms_lite do
  
  desc 'Translate all pages in the given language directory to all other languages.  Pass a language with language=en, language=ja, etc'
  task :translate do
    language = ENV['language'] || 'en'
    CmsLite::Translator.translate_pages(language)
  end
  
  desc 'Create basic directory structure for cms lite'  
  task :setup => :environment do
    page_path = "#{::Rails.root.to_s}/content/pages/en/cmslite"
    protected_path = "#{::Rails.root.to_s}/content/protected-pages/en/cmslite-protected"
    FileUtils.mkdir_p(page_path) unless File.directory?(page_path)
    FileUtils.mkdir_p(protected_path) unless File.directory?(protected_path)
    File.open("#{page_path}/hello-world.htm", 'w') {|f| f.write("Hello World") }
    File.open("#{protected_path}/hello-world.htm", 'w') {|f| f.write("Hello World") }    
    puts "finished setting up cmslite directories"
  end
  
end

require 'rake'
require 'rake/tasklib'

class CmsLite
  class Tasks < ::Rake::TaskLib
    def initialize
      define
    end
  
    private
    def define    
      namespace :cms_lite do
        desc 'Translate all pages in the given language directory to all other languages.  Pass a language with language=en, language=ja, etc'
        task :translate do
          language = ENV['language'] || 'en'
          CmsLite.translate_pages(language)
        end
      end
    end
  end
end
CmsLite::Tasks.new
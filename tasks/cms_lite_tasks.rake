desc 'Translate all pages in the given language directory to all other languages.  Pass a language with language=en, language=ja, etc'
task :cms_lite do
  CmsLite.translate_pages("#{ENV['language']}")
end
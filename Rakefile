require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the cms_lite plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the cms_lite plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'MuckCmsLiteEngine'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

gem_spec = Gem::Specification.new do |gem_spec|
  gem_spec.name        = "cms_lite"
  gem_spec.version     = "0.1.0"
  gem_spec.summary     = "Simple CMS system"
  gem_spec.email       = "support@example.com"
  gem_spec.homepage    = "http://github.com/jbasdf/cms_lite"
  gem_spec.description = "CMS gem that makes it simple to interact with your content developers by serving pages from '/content'."
  gem_spec.authors     = ["Justin Ball"]
  gem_spec.files       = FileList["[A-Z]*", "{app,config,generators,lib,shoulda_macros,rails}/**/*"]
end

desc "Generate a gemspec file"
task :gemspec do
  File.open("#{gem_spec.name}.gemspec", 'w') do |f|
    f.write gem_spec.to_yaml
  end
end
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the cms_lite plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test/rails_root/test'
  t.pattern = 'test/rails_root/test/**/*_test.rb'
  t.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |t|
    #t.libs << 'lib'
    t.libs << 'test/rails_root/lib'
    t.pattern = 'test/rails_root/test/**/*_test.rb'
    t.verbose = true
    t.output_dir = 'coverage'
    t.rcov_opts << '--exclude "gems/*"'
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

desc 'Generate documentation for the cms_lite plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'CmsLite'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "cms-lite"
    gemspec.summary = "Simple CMS system"
    gemspec.email = "justinball@gmail.com"
    gemspec.homepage = "http://github.com/jbasdf/cms_lite"
    gemspec.description = "CMS gem that makes it simple to interact with your content developers by serving pages from '/content'."
    gemspec.authors = ["Justin Ball"]
    gemspec.files.include %w( tasks/rails.rake lib/cms_lite/*.rb )
    gemspec.rubyforge_project = 'cms-lite' 
    gemspec.add_dependency "babelphish"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

# rubyforge tasks
begin
  require 'rake/contrib/sshpublisher'
  namespace :rubyforge do

    desc "Release gem and RDoc documentation to RubyForge"
    task :release => ["rubyforge:release:gem", "rubyforge:release:docs"]

    namespace :release do
      desc "Publish RDoc to RubyForge."
      task :docs => [:rdoc] do
        config = YAML.load(
            File.read(File.expand_path('~/.rubyforge/user-config.yml'))
        )

        host = "#{config['username']}@rubyforge.org"
        remote_dir = "/var/www/gforge-projects/cms-lite/"
        local_dir = 'rdoc'

        Rake::SshDirPublisher.new(host, remote_dir, local_dir).upload
      end
    end
  end
rescue LoadError
  puts "Rake SshDirPublisher is unavailable or your rubyforge environment is not configured."
end

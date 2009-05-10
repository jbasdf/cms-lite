# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cms-lite}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Ball"]
  s.date = %q{2009-05-09}
  s.description = %q{CMS gem that makes it simple to interact with your content developers by serving pages from '/content'.}
  s.email = %q{justinball@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    ".gemspec",
     "MIT-LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "app/controllers/cms_lite_controller.rb",
     "cms-lite.gemspec",
     "config/cms_lite_routes.rb",
     "lib/cms_lite.rb",
     "lib/cms_lite/exceptions.rb",
     "lib/cms_lite/exceptions.rb",
     "lib/cms_lite/initialize_routes.rb",
     "lib/cms_lite/initialize_routes.rb",
     "lib/cms_lite/languages.rb",
     "lib/cms_lite/languages.rb",
     "lib/cms_lite/tasks.rb",
     "lib/cms_lite/tasks.rb",
     "pkg/cms-lite-0.2.7.gem",
     "pkg/cms-lite-0.3.0.gem",
     "pkg/cms-lite-0.3.1.gem",
     "rails/init.rb",
     "tasks/rails.rake",
     "tasks/rails.rake",
     "test/cms_lite_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jbasdf/cms_lite}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{cms-lite}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simple CMS system}
  s.test_files = [
    "test/cms_lite_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

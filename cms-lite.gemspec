# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cms-lite}
  s.version = "0.5.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Ball"]
  s.date = %q{2010-07-03}
  s.description = %q{CMS gem that makes it simple to interact with your content developers by serving pages from '/content'.}
  s.email = %q{justinball@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gemspec",
     ".gitignore",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "app/controllers/cms_lite_controller.rb",
     "cms-lite.gemspec",
     "config/cms_lite_routes.rb",
     "lib/cms_lite.rb",
     "lib/cms_lite/exceptions.rb",
     "lib/cms_lite/initialize_routes.rb",
     "lib/cms_lite/languages.rb",
     "lib/cms_lite/tasks.rb",
     "rails/init.rb",
     "tasks/rails.rake",
     "test/rails_test/.gitignore",
     "test/rails_test/.rake_tasks",
     "test/rails_test/Capfile",
     "test/rails_test/Rakefile",
     "test/rails_test/app/controllers/application_controller.rb",
     "test/rails_test/app/models/.keep",
     "test/rails_test/app/models/user.rb",
     "test/rails_test/app/models/user_session.rb",
     "test/rails_test/app/views/layouts/default.html.erb",
     "test/rails_test/app/views/layouts/test.html.erb",
     "test/rails_test/config/amazon_s3.yml",
     "test/rails_test/config/boot.rb",
     "test/rails_test/config/database.yml",
     "test/rails_test/config/environment.rb",
     "test/rails_test/config/environments/development.rb",
     "test/rails_test/config/environments/production.rb",
     "test/rails_test/config/environments/test.rb",
     "test/rails_test/config/global_config.yml",
     "test/rails_test/config/initializers/cms_lite.rb",
     "test/rails_test/config/initializers/inflections.rb",
     "test/rails_test/config/initializers/mime_types.rb",
     "test/rails_test/config/initializers/requires.rb",
     "test/rails_test/config/initializers/session_store.rb",
     "test/rails_test/config/routes.rb",
     "test/rails_test/content/pages/en/default/root.html.erb",
     "test/rails_test/content/pages/en/demo/hi.html.erb",
     "test/rails_test/content/pages/en/open/hello.html.erb",
     "test/rails_test/content/protected-pages/en/demo/hi.html.erb",
     "test/rails_test/content/protected-pages/en/protected/safe-hello.html.erb",
     "test/rails_test/db/.keep",
     "test/rails_test/db/migrate/20090320174818_create_muck_permissions_and_roles.rb",
     "test/rails_test/db/migrate/20090402234137_create_languages.rb",
     "test/rails_test/db/migrate/20090426041056_create_countries.rb",
     "test/rails_test/db/migrate/20090426041103_create_states.rb",
     "test/rails_test/db/migrate/20090530170040_create_themes.rb",
     "test/rails_test/db/migrate/20090602041838_create_users.rb",
     "test/rails_test/db/migrate/20090606153236_create_domain_themes.rb",
     "test/rails_test/features/step_definitions/cms_steps.rb",
     "test/rails_test/features/step_definitions/common_steps.rb",
     "test/rails_test/features/step_definitions/webrat_steps.rb",
     "test/rails_test/features/support/env.rb",
     "test/rails_test/features/view_cms_pages.feature",
     "test/rails_test/lib/tasks/cucumber.rake",
     "test/rails_test/public/.htaccess",
     "test/rails_test/public/404.html",
     "test/rails_test/public/422.html",
     "test/rails_test/public/500.html",
     "test/rails_test/public/dispatch.rb",
     "test/rails_test/public/favicon.ico",
     "test/rails_test/public/images/arrow_left.gif",
     "test/rails_test/public/images/arrow_right.gif",
     "test/rails_test/public/images/blue/preview.gif",
     "test/rails_test/public/images/fancybox/fancy_closebox.png",
     "test/rails_test/public/images/fancybox/fancy_left.png",
     "test/rails_test/public/images/fancybox/fancy_progress.png",
     "test/rails_test/public/images/fancybox/fancy_right.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_e.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_n.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_ne.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_nw.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_s.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_se.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_sw.png",
     "test/rails_test/public/images/fancybox/fancy_shadow_w.png",
     "test/rails_test/public/images/fancybox/fancy_title_left.png",
     "test/rails_test/public/images/fancybox/fancy_title_main.png",
     "test/rails_test/public/images/fancybox/fancy_title_right.png",
     "test/rails_test/public/images/icons/accept.png",
     "test/rails_test/public/images/icons/add.png",
     "test/rails_test/public/images/icons/delete.png",
     "test/rails_test/public/images/icons/vote.png",
     "test/rails_test/public/images/kjh/preview.gif",
     "test/rails_test/public/images/kjy/preview.gif",
     "test/rails_test/public/images/loading.gif",
     "test/rails_test/public/images/profile_default.jpg",
     "test/rails_test/public/images/rails.png",
     "test/rails_test/public/images/red/preview.gif",
     "test/rails_test/public/images/spinner.gif",
     "test/rails_test/public/images/sprites.png",
     "test/rails_test/public/javascripts/application.js",
     "test/rails_test/public/javascripts/builder.js",
     "test/rails_test/public/javascripts/controls.js",
     "test/rails_test/public/javascripts/dragdrop.js",
     "test/rails_test/public/javascripts/effects.js",
     "test/rails_test/public/javascripts/fancyzoom.min.js",
     "test/rails_test/public/javascripts/jquery/jquery-ui.js",
     "test/rails_test/public/javascripts/jquery/jquery.easing.js",
     "test/rails_test/public/javascripts/jquery/jquery.fancybox.js",
     "test/rails_test/public/javascripts/jquery/jquery.form.js",
     "test/rails_test/public/javascripts/jquery/jquery.jgrowl.js",
     "test/rails_test/public/javascripts/jquery/jquery.js",
     "test/rails_test/public/javascripts/jquery/jquery.tips.js",
     "test/rails_test/public/javascripts/muck.js",
     "test/rails_test/public/javascripts/prototype.js",
     "test/rails_test/public/javascripts/scriptaculous.js",
     "test/rails_test/public/javascripts/slider.js",
     "test/rails_test/public/javascripts/sound.js",
     "test/rails_test/public/robots.txt",
     "test/rails_test/public/stylesheets/.keep",
     "test/rails_test/public/stylesheets/admin.css",
     "test/rails_test/public/stylesheets/blue.css",
     "test/rails_test/public/stylesheets/blueprint/ie.css",
     "test/rails_test/public/stylesheets/blueprint/liquid_screen.css",
     "test/rails_test/public/stylesheets/blueprint/plugins/buttons/icons/cross.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/buttons/icons/key.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/buttons/icons/tick.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/buttons/readme.txt",
     "test/rails_test/public/stylesheets/blueprint/plugins/buttons/screen.css",
     "test/rails_test/public/stylesheets/blueprint/plugins/fancy-type/readme.txt",
     "test/rails_test/public/stylesheets/blueprint/plugins/fancy-type/screen.css",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/doc.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/email.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/external.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/feed.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/im.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/pdf.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/visited.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/icons/xls.png",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/readme.txt",
     "test/rails_test/public/stylesheets/blueprint/plugins/link-icons/screen.css",
     "test/rails_test/public/stylesheets/blueprint/plugins/liquid/liquid.css",
     "test/rails_test/public/stylesheets/blueprint/plugins/liquid/src/liquid.css",
     "test/rails_test/public/stylesheets/blueprint/plugins/rtl/readme.txt",
     "test/rails_test/public/stylesheets/blueprint/plugins/rtl/screen.css",
     "test/rails_test/public/stylesheets/blueprint/print.css",
     "test/rails_test/public/stylesheets/blueprint/screen.css",
     "test/rails_test/public/stylesheets/blueprint/sprite.css",
     "test/rails_test/public/stylesheets/blueprint/src/forms.css",
     "test/rails_test/public/stylesheets/blueprint/src/grid.css",
     "test/rails_test/public/stylesheets/blueprint/src/grid.png",
     "test/rails_test/public/stylesheets/blueprint/src/ie.css",
     "test/rails_test/public/stylesheets/blueprint/src/print.css",
     "test/rails_test/public/stylesheets/blueprint/src/reset.css",
     "test/rails_test/public/stylesheets/blueprint/src/typography.css",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_diagonals-small_0_aaaaaa_40x40.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_diagonals-thick_15_444444_40x40.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_100_f0f0f0_1x400.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_50_99c2ff_1x400.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_55_fbf5d0_1x400.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_80_e6e6e6_1x400.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_95_fef1ec_1x400.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_highlight-hard_100_f9f9f9_1x100.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-bg_highlight-soft_100_e7eef3_1x100.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-icons_222222_256x240.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-icons_2694e8_256x240.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-icons_2e83ff_256x240.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-icons_72a7cf_256x240.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-icons_888888_256x240.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-icons_cd0a0a_256x240.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/images/ui-icons_ffffff_256x240.png",
     "test/rails_test/public/stylesheets/jquery/cupertino/jquery-ui-1.7.1.custom.css",
     "test/rails_test/public/stylesheets/jquery/jquery.fancybox.css",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_flat_0_aaaaaa_40x100.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_flat_55_fbec88_40x100.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_glass_75_d0e5f5_1x400.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_glass_85_dfeffc_1x400.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_glass_95_fef1ec_1x400.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_gloss-wave_55_5c9ccc_500x100.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_inset-hard_100_f5f8f9_1x100.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-bg_inset-hard_100_fcfdfd_1x100.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-icons_217bc0_256x240.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-icons_2e83ff_256x240.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-icons_469bdd_256x240.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-icons_6da8d5_256x240.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-icons_cd0a0a_256x240.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-icons_d8e7f3_256x240.png",
     "test/rails_test/public/stylesheets/jquery/redmond/images/ui-icons_f9bd01_256x240.png",
     "test/rails_test/public/stylesheets/jquery/redmond/jquery-ui-1.7.1.custom.css",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_flat_75_ffffff_40x100.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_65_ffffff_1x400.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_75_dadada_1x400.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-icons_222222_256x240.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-icons_2e83ff_256x240.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-icons_454545_256x240.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-icons_888888_256x240.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/images/ui-icons_cd0a0a_256x240.png",
     "test/rails_test/public/stylesheets/jquery/smoothness/jquery-ui-1.7.1.custom.css",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_diagonals-thick_18_b81900_40x40.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_diagonals-thick_20_666666_40x40.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_flat_10_000000_40x100.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_100_f6f6f6_1x400.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_100_fdf5ce_1x400.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_65_ffffff_1x400.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_gloss-wave_35_f6a828_500x100.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_highlight-soft_100_eeeeee_1x100.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-bg_highlight-soft_75_ffe45c_1x100.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-icons_222222_256x240.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-icons_228ef1_256x240.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-icons_ef8c08_256x240.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-icons_ffd27a_256x240.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/images/ui-icons_ffffff_256x240.png",
     "test/rails_test/public/stylesheets/jquery/ui-lightness/jquery-ui-1.7.1.custom.css",
     "test/rails_test/public/stylesheets/kjh.css",
     "test/rails_test/public/stylesheets/kjy.css",
     "test/rails_test/public/stylesheets/red.css",
     "test/rails_test/public/stylesheets/reset.css",
     "test/rails_test/public/stylesheets/styles.css",
     "test/rails_test/public/stylesheets/themes/blue/styles.css",
     "test/rails_test/public/stylesheets/themes/red/styles.css",
     "test/rails_test/script/about",
     "test/rails_test/script/breakpointer",
     "test/rails_test/script/console",
     "test/rails_test/script/create_project.rb",
     "test/rails_test/script/cucumber",
     "test/rails_test/script/dbconsole",
     "test/rails_test/script/destroy",
     "test/rails_test/script/generate",
     "test/rails_test/script/performance/benchmarker",
     "test/rails_test/script/performance/profiler",
     "test/rails_test/script/performance/request",
     "test/rails_test/script/plugin",
     "test/rails_test/script/process/inspector",
     "test/rails_test/script/process/reaper",
     "test/rails_test/script/process/spawner",
     "test/rails_test/script/runner",
     "test/rails_test/script/server",
     "test/rails_test/test/factories.rb",
     "test/rails_test/test/functional/.keep",
     "test/rails_test/test/functional/cms_lite_controller_test.rb",
     "test/rails_test/test/mocks/development/.keep",
     "test/rails_test/test/mocks/test/.keep",
     "test/rails_test/test/shoulda_macros/controller.rb",
     "test/rails_test/test/shoulda_macros/models.rb",
     "test/rails_test/test/test_helper.rb",
     "test/rails_test/test/unit/.keep",
     "test/rails_test/test/unit/cms_lite_test.rb",
     "test/rails_test/themes/blue/content/pages/en/blue/blue.html.erb",
     "test/rails_test/themes/blue/content/pages/en/default/blue_root.html",
     "test/rails_test/themes/blue/content/pages/en/open/blue.htm",
     "test/rails_test/themes/blue/description.txt",
     "test/rails_test/themes/blue/locales/en.yml",
     "test/rails_test/themes/blue/views/layouts/default.html.erb",
     "test/rails_test/themes/blue/views/layouts/global/_footer.html.erb",
     "test/rails_test/themes/blue/views/layouts/global/_head.html.erb",
     "test/rails_test/themes/blue/views/layouts/global/_header.html.erb",
     "test/rails_test/themes/red/content/protected-pages/en/red/red.html.erb",
     "test/rails_test/themes/red/description.txt",
     "test/rails_test/themes/red/locales/en.yml",
     "test/rails_test/themes/red/views/layouts/default.html.erb",
     "test/rails_test/themes/red/views/layouts/global/_footer.html.erb",
     "test/rails_test/themes/red/views/layouts/global/_head.html.erb",
     "test/rails_test/themes/red/views/layouts/global/_header.html.erb",
     "test/rails_test/vendor/plugins/ssl_requirement/README",
     "test/rails_test/vendor/plugins/ssl_requirement/lib/ssl_requirement.rb",
     "test/rails_test/vendor/plugins/ssl_requirement/test/ssl_requirement_test.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/jbasdf/cms_lite}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{cms-lite}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple CMS system}
  s.test_files = [
    "test/rails_test/app/controllers/application_controller.rb",
     "test/rails_test/app/models/user.rb",
     "test/rails_test/app/models/user_session.rb",
     "test/rails_test/config/boot.rb",
     "test/rails_test/config/environment.rb",
     "test/rails_test/config/environments/development.rb",
     "test/rails_test/config/environments/production.rb",
     "test/rails_test/config/environments/test.rb",
     "test/rails_test/config/initializers/cms_lite.rb",
     "test/rails_test/config/initializers/inflections.rb",
     "test/rails_test/config/initializers/mime_types.rb",
     "test/rails_test/config/initializers/requires.rb",
     "test/rails_test/config/initializers/session_store.rb",
     "test/rails_test/config/routes.rb",
     "test/rails_test/db/migrate/20090320174818_create_muck_permissions_and_roles.rb",
     "test/rails_test/db/migrate/20090402234137_create_languages.rb",
     "test/rails_test/db/migrate/20090426041056_create_countries.rb",
     "test/rails_test/db/migrate/20090426041103_create_states.rb",
     "test/rails_test/db/migrate/20090530170040_create_themes.rb",
     "test/rails_test/db/migrate/20090602041838_create_users.rb",
     "test/rails_test/db/migrate/20090606153236_create_domain_themes.rb",
     "test/rails_test/features/step_definitions/cms_steps.rb",
     "test/rails_test/features/step_definitions/common_steps.rb",
     "test/rails_test/features/step_definitions/webrat_steps.rb",
     "test/rails_test/features/support/env.rb",
     "test/rails_test/public/dispatch.rb",
     "test/rails_test/script/create_project.rb",
     "test/rails_test/test/factories.rb",
     "test/rails_test/test/functional/cms_lite_controller_test.rb",
     "test/rails_test/test/shoulda_macros/controller.rb",
     "test/rails_test/test/shoulda_macros/models.rb",
     "test/rails_test/test/test_helper.rb",
     "test/rails_test/test/unit/cms_lite_test.rb",
     "test/rails_test/vendor/plugins/ssl_requirement/lib/ssl_requirement.rb",
     "test/rails_test/vendor/plugins/ssl_requirement/test/ssl_requirement_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<babelphish>, [">= 0"])
    else
      s.add_dependency(%q<babelphish>, [">= 0"])
    end
  else
    s.add_dependency(%q<babelphish>, [">= 0"])
  end
end


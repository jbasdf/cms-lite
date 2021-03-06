require 'rails'

module CmsLite
  class Engine < ::Rails::Engine
      
    initializer 'cmslite.routes' do |app|
      ActiveSupport.on_load(:action_controller) do

        if ENV["RAILS_ENV"] != "test"
          bad_routes = CmsLite::Resolver.check_routes
          if !bad_routes.empty?
            STDERR.puts "********************************************************"
            STDERR.puts "CMS LITE WARNING"
            STDERR.puts "You currently have the same directory in your unprotected and protected directories."
            STDERR.puts "Only the files found in the unprotected directories will be available."
            STDERR.puts "Be sure that the same directory is not present under both locations. For example, "
            STDERR.puts "if your files are in the default location make sure that you don't have:"
            STDERR.puts "content/pages/en/demo/hi.html.erb"
            STDERR.puts "and"
            STDERR.puts "content/protected-pages/en/demo/hi.html.erb"
            STDERR.puts "Problem directories:"
            bad_routes.each do |route|
              STDERR.puts "#{route[:content_key]}"
            end
            STDERR.puts "********************************************************"
          end
        end

      end
    end
    
  end
end
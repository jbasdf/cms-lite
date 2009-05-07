require 'cms_lite_exceptions'

class ActionController::Routing::RouteSet
  def load_routes_with_cms_lite!
    cms_lite_routes = File.join(File.dirname(__FILE__), *%w[.. config cms_lite_routes.rb])
    add_configuration_file(cms_lite_routes) unless configuration_files.include? cms_lite_routes
    load_routes_without_cms_lite!
  end

  alias_method_chain :load_routes!, :cms_lite
end

class CmsLite
  CMS_LITE_CONTENT_PATH = 'content'
  CMS_LITE_PAGES_PATH = 'pages'
  CMS_LITE_PROTECTED_PAGES_PATH = 'protected-pages'
  class << self
    
    def cms_routes
      get_cms_routes(CMS_LITE_PAGES_PATH)
    end
    
    def protected_cms_routes
      get_cms_routes(CMS_LITE_PROTECTED_PAGES_PATH)
    end
    
    def get_cms_routes(pages_path)
      cms_routes = []
      cms_lite_page_path = File.join(RAILS_ROOT, CMS_LITE_CONTENT_PATH, pages_path)
      Dir.glob("#{cms_lite_page_path}/*").each do |localization_directory|
        if File.directory?(localization_directory)
          Dir.glob("#{localization_directory}/*").each do |content_item|
            path = File.basename(content_item)
            content_key = content_item.gsub(localization_directory, '')
            cms_routes << { :uri => "/#{path}/*content_page",
                            :content_key => content_key }
          end
        end
      end
      cms_routes
    end
    
  end
end

# module CmsLite
#   
#   class << self
#     
#     def enable
#       
#     end
#     
#     def add_route(path, route_options)
#       map.connect page.url, :controller => 'pages', :action => 'show', :id => page
#       new_route = ActionController::Routing::Routes.builder.build(path, route_options)
#       if !ActionController::Routing::Routes.routes.include?(new_route)
#         puts new_route
#         ActionController::Routing::Routes.routes.insert(0, new_route)
#       end
#     end
#     
#   end
# end

#CmsLite::enable


#ActionController::Base.send :include, ActionController::CmsLite

# map.content '/content/*content_page', :controller => 'cms_lite', :action => 'show_page'
# 
# map.genealogy_records '/genealogy-records/*content_page', :controller => 'cms_lite', :action => 'show_page'
# map.help '/help/*content_page', :controller => 'cms_lite', :action => 'show_page'
# map.protected_page '/protected/*content_page', :controller => 'cms_lite', :action => 'show_protected_page'

# map.content '/content/*content_page', :controller => 'cms_lite', :action => 'show_page'
# map.protected_page '/protected/*content_page', :controller => 'cms_lite', :action => 'show_protected_page'
# 

# path = File.join(base_path, page_path, I18n.locale.to_s, url_key)  
# content_page = Dir.glob("/#{path}.*").first


            
            # ActionController::Routing::RouteSet.add_route("/#{root_path}/*content_page", { :controller => 'cms_lite', 
            #                                                     :action => 'show_page',
            #                                                     :content_directory => root_path,
            #                                                     :protect => content_directory.include?('protected') })
            # new_route = ActionController::Routing::Routes.builder.build(name, route_options)
            #           ActionController::Routing::Routes.routes.insert(0, new_route)
            
# config.to_prepare do
#   ApplicationController.helper(AnnouncementsHelper)
# end


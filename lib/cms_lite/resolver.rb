module CmsLite
  
  class Resolver
    
    class << self
    
      def cms_routes
        get_all_content_path_routes(CmsLite::PAGES_PATH)
      end
    
      def protected_cms_routes
        get_all_content_path_routes(CmsLite::PROTECTED_PAGES_PATH)
      end
    
      def get_all_content_path_routes(pages_path)
        routes = []
        CmsLite.configuration.content_paths.each do |path|
          routes += get_cms_routes(path, pages_path)
        end
        routes
      end
    
      def get_cms_routes(content_path, pages_path)
        cms_routes = []
        cms_lite_page_path = File.join(::Rails.root.to_s, content_path, pages_path)
        Dir.glob("#{cms_lite_page_path}/*").each do |localization_directory|
          if File.directory?(localization_directory)
            Dir.glob("#{localization_directory}/*").each do |content_item|
              path = File.basename(content_item)
              content_key = content_item.gsub(localization_directory, '')
              if !content_key.blank?
                # pages found in the root path get root mapping
                if path == ROOT_PATH
                  Dir.glob("#{content_item}/*").each do |root_page|
                    root_page_key = File.basename(File.basename(root_page, ".*"), ".*") # for files that look like root.html.erb
                    cms_route = { :uri => "/#{root_page_key}",
                                  :content_page => "#{root_page_key}",
                                  :content_key => content_key }
                    if !cms_routes.include?(cms_route)
                      cms_routes << cms_route
                    end
                  end
                else
                  cms_route = { :uri => "/#{path}/*content_page",
                                :content_key => content_key }
                  if !cms_routes.include?(cms_route)
                    cms_routes << cms_route
                  end
                end
              end
            end
          end
        end
        cms_routes
      end
    
      def build_route_options(cms_route)
        defaults = { :content_key => cms_route[:content_key] }
        defaults = defaults.merge(:content_page => cms_route[:content_page]) if cms_route[:content_page]
        defaults        
      end
        
      # This is a utitility method that makes sure the unprotected routes don't interfere with the proctected routes
      def check_routes
        bad_routes = []
        open_routes = cms_routes
        protected_routes = protected_cms_routes
        open_routes.each do |open_route|
          protected_routes.each do |protected_route|
            if open_route[:content_key] == protected_route[:content_key]
              bad_routes << open_route
            end
          end
        end
        bad_routes
      end
  
    end
  
  end
end
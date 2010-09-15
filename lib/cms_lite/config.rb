module CmsLite

  PAGES_PATH = 'pages'
  PROTECTED_PAGES_PATH = 'protected-pages'
  ROOT_PATH = 'default' # pages located in this directory will be served off the root of the website. ie http://www.example.com/my-page
  
  def self.configuration
    # In case the user doesn't setup a configure block we can always return default settings:
    @configuration ||= Configuration.new
  end
  
  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :content_path
    
    def cms_layouts=(layouts)
      @@layouts = layouts
    end
  
    def cms_layouts
      @@layouts
    end
    
    def content_paths
      @@content_paths ||= [self.content_path]
    end
  
    def append_content_path(path, reload_routes = true)
      content_paths << path
      setup_routes if reload_routes
    end
  
    def prepend_content_path(path, reload_routes = true)
      content_paths.unshift(path)
      setup_routes if reload_routes
    end
  
    def remove_content_path(path, reload_routes = true)
      content_paths.delete(path)
      setup_routes if reload_routes
    end
    
    def initialize
      self.cms_layouts = { :default => 'default' }
      self.content_path = 'content'
    end
    
  end
end

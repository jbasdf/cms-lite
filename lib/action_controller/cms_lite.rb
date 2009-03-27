module ActionController
    
  module CmsLite
    
    # Module automatically mixed into the all controllers
    def self.included(base)  
      base.send :include, InstanceMethods
    end
    
    module InstanceMethods
      
      def initialize
        @cms_lite_paths = [File.join(RAILS_ROOT, 'content')]
      end
      
      def cms_lite_paths
        setup_cms_lite if defined? setup_cms_lite
        @cms_lite_paths
      end
      
      def prepend_cms_lite_path(path)
        @cms_lite_paths.unshift(*path)
      end
      
      def append_cms_lite_path(path)
        @cms_lite_paths.push(*path)
      end
      
    end
    
  end
  
end
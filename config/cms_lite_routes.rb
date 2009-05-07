ActionController::Routing::Routes.draw do |map|

  CmsLite.cms_routes.each do |cms_route|
    map.connect cms_route[:uri], :controller => 'cms_lite', :action => 'show_page', :content_key => cms_route[:content_key]
  end
  
  CmsLite.protected_cms_routes.each do |cms_route|
    map.connect cms_route[:uri], :controller => 'cms_lite', :action => 'show_protected_page', :content_key => cms_route[:content_key]
  end
  
end

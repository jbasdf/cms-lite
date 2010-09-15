Rails.application.routes.draw do

  CmsLite::Resolver.cms_routes.each do |cms_route|
    match cms_route[:uri] => "cms_lite#show_page", :defaults => CmsLite::Resolver.build_route_options(cms_route)
  end
  
  CmsLite::Resolver.protected_cms_routes.each do |cms_route|
    match cms_route[:uri] => "cms_lite#show_protected_page", :defaults => CmsLite::Resolver.build_route_options(cms_route)
  end

end

CmsLite.configure do |config|
  config.cms_layouts = { :default => 'default' }
  config.append_content_path('themes/blue/content', false)
  config.append_content_path('themes/red/content', false)  
end
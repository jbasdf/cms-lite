class CmsLiteController < ApplicationController

  before_filter :login_required, :only => [:show_protected_page]

  PAGES_PATH = 'pages'
  PROTECTED_PAGES_PATH = 'protected-pages'
  
  def show_page
    respond_to do |format|
      format.html {render_content_page(PAGES_PATH, true)}
      format.js {render_content_page(PAGES_PATH, "blank")}
      format.xml {render_content_page(PAGES_PATH, false)}
    end
  end

  def show_protected_page
    respond_to do |format|
      format.html {render_content_page(PROTECTED_PAGES_PATH, true)}
      format.js {render_content_page(PROTECTED_PAGES_PATH, "blank")}
      format.xml {render_content_page(PROTECTED_PAGES_PATH, false)}
    end
  end

  protected
  def render_content_page(page_path, request_layout)
    render_page(page_path, params[:content_page].join('/'), request_layout)
  end

  private

  def render_page(page_path, url_key, request_layout)
    content_page = ''
    cms_lite_paths.each do |base_path|
      path = File.join(base_path, page_path, url_key)    
      content_page = Dir.glob("/#{path}.*").first
      break if content_page
    end
    raise CmsLiteExceptions::MissingTemplateError, "Could not find template for: '#{path}'" if content_page.nil?
    render :file => content_page, :layout => request_layout || true
  rescue CmsLiteExceptions::MissingTemplateError => ex
    render :file => "#{RAILS_ROOT}/public/404.html.haml", :status => 404
  end
  
end
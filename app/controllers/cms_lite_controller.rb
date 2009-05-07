class CmsLiteController < ApplicationController

  before_filter :login_required, :only => [:show_protected_page]

  def show_page
    render_content_page(CmsLite::PAGES_PATH)
  end
  
  def show_protected_page
    render_content_page(CmsLite::PROTECTED_PAGES_PATH)
  end
  
  def render_content_page(cms_lite_path, request_layout = '')
    path = File.join(RAILS_ROOT, CmsLite::CONTENT_PATH, cms_lite_path, I18n.locale.to_s, params[:content_key], params[:content_page].join('/'))
    format = params[:format] || 'htm'
    content_page = Dir.glob("/#{path}.#{format}").first
    content_page = Dir.glob("/#{path}").first  if content_page.nil?
    content_page = Dir.glob("/#{path}.*").first  if content_page.nil?
    raise CmsLiteExceptions::MissingTemplateError, "Could not find template for: '#{path}'" if content_page.nil?
    respond_to do |format|
      format.html { render :file => content_page }
      format.js { render :file => content_page, :layout => false }
      format.xml { render :file => content_page, :layout => false }
    end
  rescue CmsLiteExceptions::MissingTemplateError => ex
    
    render :file => "#{RAILS_ROOT}/public/404.html", :status => 404
  end
  
end
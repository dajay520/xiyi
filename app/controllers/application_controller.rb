class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize,:except => :index


  protected


  #过滤器方法
  #登陆校验方法
  def authorize
    #unless User.find_by_id(session[:user_id])
    #  respond_to do |format|
    #    format.html { redirect_to users_url }
    #    format.json { head :ok }
    #  end
    #end
  end
end

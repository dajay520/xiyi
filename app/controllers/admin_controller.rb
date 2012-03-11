class AdminController < ApplicationController

  def authorize
    unless session[:user] and session[:user].role_type =='A'
      redirect_to '/'
    end
  end

  def show

  end
end

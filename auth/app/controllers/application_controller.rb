class ApplicationController < ActionController::Base

  helper_method :logged

  def authenticate
    redirect_to '/auth/twitter' unless session[:user]
  end

  def logged
    session[:user]
  end
end

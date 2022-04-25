class SessionController < ApplicationController
  def create
    request.env['omniauth.auth']
    session[:user] = request.env['omniauth.auth']['info']['nickname']
    session[:user_name] = request.env['omniauth.auth']['info']['name']

    redirect_to root_path, notice: 'Signed in!'
  end

  def destroy
    session[:user] = nil
    session[:user_name] = nil

    redirect_to root_path, notice: 'Signed out!'
  end
end
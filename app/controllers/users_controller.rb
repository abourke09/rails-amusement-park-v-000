class UsersController < ApplicationController
  def new

  end

  def create
    if params[:user][:name].nil? || params[:user][:name].empty?
      redirect_to '/login'
    else
      session[:user][:name] = params[:user][:name]
      redirect_to '/'
    end
  end

end

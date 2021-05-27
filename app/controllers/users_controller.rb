# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    #     @user = User.new(name: 'Tanz', email: 'tanzila.abedin@yahoo.com')
  end

  def create
    #    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

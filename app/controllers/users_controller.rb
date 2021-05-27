# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new(name: 'Tanzila', email: 'tanzilaabedin01@gmail.com')
  end

  def create
    #  @user = User.new(name: params[:username], email: params[:email], password: params[:password])
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :show
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find_by(params[:id])
    render 'show' if @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

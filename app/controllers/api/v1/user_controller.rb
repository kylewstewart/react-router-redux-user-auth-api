class Api::V1::UserController < ApplicationController

  def index
  end

  def new
  end

  def create
    binding.pry
    username = params[:username]
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

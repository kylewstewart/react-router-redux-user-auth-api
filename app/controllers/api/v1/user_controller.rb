class Api::V1::UserController < ApplicationController

  def index
  end

  def new
  end

  def create
    user = User.create(
      username: params['username'],
      password: parmas['password']      
    )
    if user
      render json: {
        id: user.id,
        username: user.username
      }
    else
      render json: {
        error: 'New user was not created, please try agian.'
      }, status: 404
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: {
      id: current_user.id,
      user_name: current_user.user_name
    }
  end

  def create
    binding.pry
    user = User.find_by(user_name: params[:user_name])
    if user.present? && user.authenticate(params[:password])
      render json: {
        id: user.id,
        user_name: user.user_name,
        jwt: JWT.encode({user_id: user.id}, nil, 'none')
        }
    else
      render json: {
        eror: 'User Name or Password is Incorrect'
      }, status: 404
    end
  end


end

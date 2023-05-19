class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)

    if User.exists?(name: @user.name)
      render json: {
        status: :unprocessable_entity,
        errors: { name: ['The user already exists, please use another name'] }
      }
    elsif @user.save
      render json: { user: @user, status: :created }
    else
      render json: {
        status: :internal_server_error,
        errors: @user.errors
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end

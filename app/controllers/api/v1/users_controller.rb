class Api::V1::UsersController < ApplicationController
  # get api/v1/users
  def index
    @users = User.all
    render json: @users
  end

  # post api/v1/users => params should be on body
  def create
    user = User.new(user_params)
    puts user
    if user.save
      render json: user, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end

class Api::V1::AccountsController < ApplicationController
  def create
    @user = User.find_by(username: session_params[:username])

    if @user
      render json: {
        login: true,
        user: @user
      }, status: :ok
    else
      render json: {
        login: false,
        status: :unauthorized,
        errors: { username: ['No such user, please try again'] }
      }, status: :unauthorized
    end
  end

  def destroy
    render json: {
      status: :ok,
      logout: true
    }, status: :ok
  end

  private

  def session_params
    params.require(:user).permit(:username, :errors)
  end
end

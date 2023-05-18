class Api::V1::ReservationsController < ApplicationController
 
  def index
    @user = User.find_by(name: params[:name])

    if @user
      reservations = @user.reservations
      render json: reservations.as_json(include: { user: { only: %i[name] }, house: { only: %i[name location] } })
    else
      render json: { error: 'User not found' }, status: :not_found
    end
  end

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
      render json: {
        status: :created,
        json: reservation
      }
    else
      render json: {
        status: :unprocessable_entity,
        errors: reservation.errors
      }
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :house_id, :startDate, :endDate)
  end
end

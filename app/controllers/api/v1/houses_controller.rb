class Api::V1::HousesController < ApplicationController
  # GET /api/v1/houses
  def index
    @houses = House.all
    render json: @houses
  end

  # GET /api/v1/houses/:id
  def show
    @house = House.find(params[:id])
    render json: @house
  end

  def create
    @house = House.new(house_params)
    if @house.save
      render json: @house, status: :ok
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @house = House.find(params[:id])
    if @house.destroy
      render json: {
        errors: false,
        message: 'deleted succesfully'
      }, status: :ok
    else
      render json: {
        errors: true,
        message: 'failed deleting'
      }, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound
    render json: {
      errors: true,
      message: 'ID not found'
    }, status: :unprocessable_entity
  end

  private

  def house_params
    params.require(:house).permit(:name, :style, :photo, :garage, :bedrooms, :bathrooms, :area, :location, :price,
    :description)
  end
end

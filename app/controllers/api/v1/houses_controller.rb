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
      render json: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @house = Bike.find(params[:id])
    @house.destroy
  end

  private

  def house_params
    
    params.require(:house).permit(:house_type, :photo, :garage, :bedrooms, :bathrooms, :area, :location, :daily_price, :description)
  end

end

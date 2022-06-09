class PlantsController < ApplicationController
  #GET /plants
  def index
    render json: Plant.all, status: :ok
  end

  #GET /plants/:id
  def show
    render json: Plant.all.find_by(id: params[:id]), status: :ok
  end

  #POST /plants
  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end

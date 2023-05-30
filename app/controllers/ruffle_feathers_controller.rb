class RuffleFeathersController < ApplicationController
  def index
    feathers = RuffleFeather.all
    render json: feathers
  end

  def show
    feather = RuffleFeather.find(params[:id])
    render json: feather
  end

  def create
    feather = RuffleFeather.create(feather_params)
    if feather.valid?
      render json: feather
    else
      render json: feather.errors
    end
  end

  def update
    feather = RuffleFeather.find(params[:id])
    feather.update(feather_params)
    if feather.valid?
      render json: feather
    else
      render json: feather.errors
    end
  end

  def destroy
    feather = RuffleFeather.find(params[:id])
    if feather.destroy
      feathers = RuffleFeather.all
      render json: feathers
    else
      render json: feather.errors
    end
  end

  private
  def feather_params
    params.require(:ruffle_feather).permit(:name, :species, :origin)
  end
end

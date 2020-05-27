class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [:show, :edit, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restautant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    @restaurant.save

    redirect_to restaurants_path
  end

  def edit
  end

  def update
    restaurant.update(restaurants_params)

    redirect_to restaurant_path
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurants_params
    params.require(:restaurant).permit(:title, :details, :completed)
  end
end

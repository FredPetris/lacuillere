class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET '/restaurants': get all your articls
  def index
    @restaurants = Restaurant.all
  end

  # GET '/restaurants/:id': get a precise restaurant,
  def show
    @reviews = Review.all
  end

  # GET '/restaurants/new': get the form to create a new restaurant
  def new
    @restaurant = Restaurant.new
  end

  # POST '/restaurants': post a new restaurant
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
     render :new
   end
 end

  # GET '/restaurants/:id/edit': get the form to edit an existing restaurant
  def edit
  end

  # PATCH '/restaurants/:id': update an existing restaurant
  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  # DELETE '/restaurants/:id': delete an existing restaurant
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end

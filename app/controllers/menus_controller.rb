class MenusController < ApplicationController

  def show
  	# format => '1 22 19'
  	@date= Date.parse params[:date]
  	@restaurant_id = params[:restaurant_id]
  	@restaurant = Restaurant.find(@restaurant_id)
  	@food = FoodItem.by_date_and_restaurant_id(@date, @restaurant_id)
  	@food_first = @food.where type_of_course: :first_course
  	@food_main = @food.where type_of_course: :main_course
  	@food_drink = @food.where type_of_course: :drink
  end

end
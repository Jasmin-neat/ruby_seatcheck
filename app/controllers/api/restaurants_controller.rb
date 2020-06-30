class Api::RestaurantsController < ApplicationController
    def index 
        if params[:search] ## newyork 
            @restaurants = Restaurant.search_by_key(params[:search])
            if @restaurants ##filter is made 
                @restaurants
            else 
                render json: ["No Restaurant Found"], status: 404
            end 
        else 
            @restaurants = Restaurant.all
        end

        render :index
    end 

    def show 
        @restaurant = Restaurant.find(params[:id])
    end 
end

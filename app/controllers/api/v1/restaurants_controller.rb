module Api
    module V1
        class RestaurantsController < ApplicationController
          # GET
          def index
              @restaurants = Restaurant.order('id asc')
          end

          # GET
          def create
              @restaurant = Restaurant.new(restaurant_params)
              if @restaurant.save
                render status: :created
              else
                render json: @restaurant.errors, status: :unprocessable_entity
              end
          end

          private
          def restaurant_params
            params.require(:restaurant).permit(:name)
          end

        end
    end
end

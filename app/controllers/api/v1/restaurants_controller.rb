module Api
    module V1
        class RestaurantsController < ApplicationController
          # GET
          def index
              @restaurants = Restaurant.order('name')
              # render json: @restaurants
          end
        end
    end
end

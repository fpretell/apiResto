module Api
    module V1
        class RestaurantsController < ApplicationController
          # GET
          def index
              @restaurants = Restaurant.order('created_at DESC')
              render json: @restaurants
          end
        end
    end
end

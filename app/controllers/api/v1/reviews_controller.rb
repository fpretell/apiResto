module Api
    module V1
        class ReviewsController < ApplicationController

          # GET
          def index
              @reviews = Review.order('created_at DESC')
              # render json: @reviews
          end

        end
    end
end

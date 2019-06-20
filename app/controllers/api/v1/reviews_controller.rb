module Api
    module V1
        class ReviewsController < ApplicationController

          # GET
          def index
              @reviews = Review.order('created_at DESC')
          end

          # POST
          def create
              @review = Review.create(
                restaurant: Restaurant.find(params[:review][:restaurant]),
                content: params[:review][:content]
              )
              if @review
                render status: :created
              else
                render json: @review.errors, status: :unprocessable_entity
              end
          end

        end
    end
end

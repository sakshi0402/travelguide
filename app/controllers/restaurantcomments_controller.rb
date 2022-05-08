class RestaurantcommentsController < ApplicationController
    def create
        if user_signed_in? 
                @restaurant=Restaurant.find(params[:destination_id])
                @comment = @restaurant.restaurantcomments.create(commentparams)
                redirect_to restaurantsinfo_path()
              else 
                redirect_to restaurantsinfo_path(),alert:"Please login to continue.."
      end
    end
    private
            def commentparams
              params.permit(:username,:body)
            end
end

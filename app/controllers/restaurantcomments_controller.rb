class RestaurantcommentsController < ApplicationController
    def create
        if user_signed_in? 
                @restaurant=Restaurant.find(params[:destination_id])
                @comment = @restaurant.restsaurantcomments.create(commentparams)
                redirect_to restaurantsinfo_path()
      end
    end
    private
            def commentparams
              params.permit(:username,:body)
            end
end

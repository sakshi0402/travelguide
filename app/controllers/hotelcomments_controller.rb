class HotelcommentsController < ApplicationController
  
  def create
    if user_signed_in? 
            @hotel=Hotel.find(params[:destination_id])
            @comment = @hotel.hotelcomments.create(commentparams)
            redirect_to hotelsinfo_path()
    else 
      redirect_to hotelsinfo_path(),alert:"Please login to continue.."
   end
end
private
        def commentparams
          params.permit(:username,:body)
        end       
end

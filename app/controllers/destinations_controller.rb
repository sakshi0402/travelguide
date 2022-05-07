class DestinationsController < ApplicationController
    def view
        @destination = Destination.find(params[:destination_id])
    end
    def place
        @destination=Destination.find(params[:id])
    end
    def placesinfo
        @destination=Destination.find(params[:id])
        @place=Place.find(params[:destination_id])
    end
    def hotel
        @destination=Destination.find(params[:id])
    end
    def hotelsinfo
        @destination=Destination.find(params[:id])
        @hotel=Hotel.find(params[:destination_id])
    end
    def restaurant
        @destination=Destination.find(params[:id])
        @destination=Destination.find(params[:id])
    end
    def restaurantsinfo
        @destination=Destination.find(params[:id])
        @restaurant=Restaurant.find(params[:destination_id])
    end
end

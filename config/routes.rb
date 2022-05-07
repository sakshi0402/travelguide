Rails.application.routes.draw do
  resources :comments
  resources :experiences
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'destinations/home'
  get 'home/index'
  get 'home/photos'
  get "destinations/:destination_id/view", to:"destinations#view",as:"destinations"
  get "destinations/:id/place", to:"destinations#place",as:"places"
  get "destinations/:id/place/:destination_id", to:"destinations#placesinfo",as:"placesinfo"
  get "destinations/:id/restaurant", to:"destinations#restaurant",as:"restaurants"
  get "destinations/:id/restaurant/:destination_id", to:"destinations#restaurantsinfo",as:"restaurantsinfo"
  get "destinations/:id/hotel", to:"destinations#hotel",as:"hotels"
  get "destinations/:id/hotel/:destination_id", to:"destinations#hotelsinfo",as:"hotelsinfo"
  post "destinations/:id/hotel/:destination_id", to:"hotelcomments#create"
  post "destinations/:id/restaurant/:destination_id", to:"restaurantcomments#create"
  devise_for :users 
  
devise_scope :user do  
  get '/users/sign_out' => 'devise/sessions#destroy'     
end

end

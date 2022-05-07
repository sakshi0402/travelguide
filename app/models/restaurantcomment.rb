class Restaurantcomment < ApplicationRecord
  belongs_to :restaurant
  validates :username, presence: true 
  validates :body, presence: true
end

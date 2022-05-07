class Hotelcomment < ApplicationRecord
  belongs_to :hotel
  validates :username, presence: true 
  validates :body, presence: true
  
end

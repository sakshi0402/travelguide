class Comment < ApplicationRecord
  belongs_to :hotel
  belongs_to :restaurant
end

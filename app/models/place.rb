class Place < ApplicationRecord
  belongs_to :destination
  has_one_attached:images,dependent: :destroy
end

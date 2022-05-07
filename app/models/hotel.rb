class Hotel < ApplicationRecord
  belongs_to :destination
  has_one_attached:images,dependent: :destroy
  has_many:hotelcomments,dependent: :destroy
    validates :name, presence: true 
    validates :contact, presence: true,numericality: { only_integer: true },length: { minimum: 10}
    validates :address, presence: true 
    validates :description, presence: true 
end

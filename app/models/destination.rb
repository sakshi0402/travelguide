class Destination < ApplicationRecord
    has_one_attached:images,dependent: :destroy
    has_many:hotels,dependent: :destroy
    has_many:restaurants,dependent: :destroy
    has_many:places,dependent: :destroy
    has_many:hotels,dependent: :destroy
    validates :name, presence: true 
    validates :state, presence: true 
    validates :history, presence: true 
   
    enum state: {'Andhra Pradesh':'Andhra Pradesh', 'Arunachal Pradesh':' Arunachal Pradesh','Assam':'Assam','Bihar':'Bihar',
        'Chhattisgarh':'Chhattisgarh','Goa':'Goa',Gujarat:'Gujarat','Haryana':'Haryana','Himachal Pradesh':'Himachal Pradesh',
        'Jharkhand':'Jharkhand','Karnataka':'Karnataka','Kerala':'Kerala','Madhya Pradesh':'Madhya Pradesh','Maharashtra':'Maharashtra',	
        'Manipur':'Manipur','Meghalaya':'Meghalaya',Mizoram:'Meghalaya',Nagaland:'Nagaland',Odisha:'Odisha',Punjab:'Punjab',	
        Rajasthan:'Rajasthan',Sikkim:'Sikkim','Tamil Nadu':'Tamil Nadu',Telangana:'Telangana',Tripura:'Tripura',
        'Uttar Pradesh':'Uttar Pradesh',Uttarakhand:'Uttarakhand','West Bengal':'West Bengal',
        'Andaman and Nicobar Islands':'Andaman and Nicobar Islands',Chandigarh:'Chandigarh',
        'Dadra & Nagar Haveli and Daman & Diu':'Dadra & Nagar Haveli and Daman & Diu',Delhi:'Delhi',
        'Jammu and Kashmir':'Jammu and Kashmir',Lakshadweep:'Lakshadweep',Puducherry:'Puducherry',Ladakh:'Ladakh'
        }
        
end

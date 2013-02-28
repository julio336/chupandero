class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :horary, :image1, :image2, :logo, :name, :phone,
                  :promo, :page, :email, :geo_address, :latitude, :longitude
  
  geocoded_by :geo_address
  after_validation :geocode
end

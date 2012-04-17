class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude
  
  reverse_geocoded_by :lat, :lon do |obj,results|
      if geo = results.first
        obj.city    = geo.city
        obj.zipcode = geo.postal_code
        obj.country = geo.country_code
      end
    end
    after_validation :reverse_geocode
  
end

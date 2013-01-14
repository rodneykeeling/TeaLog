class Tea < ActiveRecord::Base
  attr_accessible :company, 
                  :description, 
                  :drink_frequency, 
                  :id, 
                  :name, 
                  :origin,
                  :photo_url,
                  :rating,
                  :store_url,
                  :tea_type,
                  :steep_temperature,
                  :steep_time
end

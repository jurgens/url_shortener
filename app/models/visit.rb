class Visit < ActiveRecord::Base
  attr_accessible :url_id
  belongs_to :url  
end

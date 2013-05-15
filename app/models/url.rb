class Url < ActiveRecord::Base
  attr_accessible :password_digest, :private, :url_long
end

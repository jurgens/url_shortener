class Url < ActiveRecord::Base

  attr_accessible :password_digest, :private, :url_long, :url_short
  before_save :set_url_short
  has_many :visits

  validates :url_long, :format => { :with =>/htt(p|ps):\/\//, :on => :create }
  validates :password_digest, presence: true, if: lambda{ |e| e.private? }

  private

  def random_url
  	short =  "#{(('a'..'z').to_a + (1..9).to_a).shuffle[0..5].join}"
  	return short if Url.find_by_url_short(short).nil?
  	random_url
  end

  def set_url_short
  	self.url_short ||= random_url
  end
end

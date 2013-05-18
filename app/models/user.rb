class User < ActiveRecord::Base
  attr_accessible :seat, :stubhub_userId

  has_and_belongs_to_many :schemes
  
end

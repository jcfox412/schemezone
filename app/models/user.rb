class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :seat, :stubhub_userId
  has_secure_password

  has_and_belongs_to_many :schemes


  validates_confirmation_of :email
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
end

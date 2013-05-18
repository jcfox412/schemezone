class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /^.+@.+\..+$/i 
  attr_accessible :email, :password, :password_confirmation, :seat, :stubhub_userId
  has_secure_password

  has_and_belongs_to_many :schemes
  before_validation :downcase_email

  validates_confirmation_of :email
  validates_presence_of :password, :on => :create
  validates :email, :uniqueness => true, 
         :format => {:with => VALID_EMAIL_REGEX }

  def downcase_email
    self.email = self.email.downcase if self.email.present?
  end
  
end

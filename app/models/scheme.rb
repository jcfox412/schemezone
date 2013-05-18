class Scheme < ActiveRecord::Base
  attr_accessible :creator_id, :description, :string, :title, :type

  belongs_to :event
  has_and_belongs_to_many :users
  
end

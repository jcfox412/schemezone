class TeamAdmin < ActiveRecord::Base
  attr_accessible :team_name, :user_id

  belongs_to :user
  has_many :contests
  
end

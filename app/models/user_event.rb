class UserEvent < ActiveRecord::Base
  attr_accessible :event_id, :left, :top, :user_id

  belongs_to :event_id
  belongs_to :user
end

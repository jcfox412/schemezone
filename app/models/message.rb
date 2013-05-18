class Message < ActiveRecord::Base
  attr_accessible :content, :scheme_id, :user_id

  belongs_to :user
  belongs_to :scheme
  
end

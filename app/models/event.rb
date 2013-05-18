class Event < ActiveRecord::Base
  attr_accessible :stubhub_eventId

  has_many :schemes

end

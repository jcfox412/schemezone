class Event < ActiveRecord::Base
  attr_accessible :stubhub_eventId


  def self.find_or_create_event(stubhub_eventId)
  	event = Event.find_by_stubhub_eventId(stubhub_eventId)
  	unless event
  		event = Event.create(:stubhub_eventId => stubhub_eventId)
  	end
  end

end

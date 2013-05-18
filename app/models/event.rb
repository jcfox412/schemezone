class Event < ActiveRecord::Base
  attr_accessible :stubhub_eventId, :name, :description, :image_url, :team_1, :team_2, :date
  has_many :schemes

  # Used by the controller to find or create and event in our
  # database based off the stubhub_eventId
  # < Marco Salazar, salazarm@mit.edu >
  def self.find_or_create_event(params)
  	event = Event.find_by_stubhub_eventId(params[:stubhub_eventId])
  	unless event
  		event = Event.create(params[:event])
  	end
  end

end
rail
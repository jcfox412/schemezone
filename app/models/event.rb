class Event < ActiveRecord::Base
  attr_accessible :stubhub_eventId, :name, :description, :image_url, :team_1, :team_2, :date
  has_many :schemes

  has_many :contests

  # Used by the controller to find or create and event in our
  # database based off the stubhub_eventId
  # < Marco Salazar, salazarm@mit.edu >
  def self.find_or_create_event(params)
  	event = Event.find_by_stubhub_eventId(params[:event][:stubhub_eventId])
  	unless event
  		event = Event.create(params[:event])
  	end
  end

  def schemers
    sum = 0
    schemesHash = Hash.new
    schemes.each do |scheme|
      scheme.users.each do |user|
        unless schemesHash.has_key?(user)
          schemesHash[user] = 1
          sum+= 1
        end
      end
    end
    return sum
  end
end
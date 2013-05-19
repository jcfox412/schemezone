class Scheme < ActiveRecord::Base
  DEFAULT_PHOTO = "/img/cheerleaders.jpg"
  attr_accessible :event_id, :creator_id, :description, :string, :title, :type, :team_name, :image_url, :is_endorsed

  belongs_to :event
  has_and_belongs_to_many :users
  has_and_belongs_to_many :contests
  has_many :messages


  # override method so messages are included in json
  def as_json(options={})
      super(:include =>[:messages,:users])
  end

  def creator
    User.find_by_id(creator_id)
  end

  def image_url
  	return DEFAULT_PHOTO
  end
  
end
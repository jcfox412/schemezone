class Scheme < ActiveRecord::Base
  attr_accessible :creator_id, :description, :string, :title, :type, :team_name, :image_url

  belongs_to :event
  has_and_belongs_to_many :users
  has_many :messages

  # override method so messages are included in json
  def as_json(options={})
      super(:include =>[:messages])
  end
  
end

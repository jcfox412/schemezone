class Contest < ActiveRecord::Base
  attr_accessible :description, :end_time, :event_id, :image_url, :start_time, :team_admin_id, :title

  belongs_to :event
  belongs_to :team_admin
  has_and_belongs_to_many :schemes

end

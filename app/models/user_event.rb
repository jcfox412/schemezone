class UserEvent < ActiveRecord::Base
  attr_accessible :event_id, :left, :top, :user_id

  belongs_to :event
  belongs_to :user

  def self.user_has_this_event(current_user, event_id)
    return current_user && UserEvent.where(:event_id => event_id, :user_id => current_user.id).count == 1
  end

  def self.create_if_not_exists(current_user,event_id, left, top)
      if !UserEvent.user_has_this_event(current_user,event_id)
        UserEvent.create(:user_id => current_user.id, :event_id => event_id, :left => left, :top => top)
      end
  end
end

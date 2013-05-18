class ChangeColumnNameScheme < ActiveRecord::Migration
  def change
    remove_column :schemes, :stubhub_eventId
    add_column :schemes, :event_id, :integer
  end

end

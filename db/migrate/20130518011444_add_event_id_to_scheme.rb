class AddEventIdToScheme < ActiveRecord::Migration
  def change
  	add_column :schemes, :stubhub_eventId, :string
  end
end

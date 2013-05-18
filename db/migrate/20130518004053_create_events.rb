class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :stubhub_eventId

      t.timestamps
    end
  end
end

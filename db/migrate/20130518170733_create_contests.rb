class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :image_url
      t.integer :team_admin_id
      t.integer :event_id
      t.text :description
      t.string :title
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

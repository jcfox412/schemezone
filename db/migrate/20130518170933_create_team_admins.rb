class CreateTeamAdmins < ActiveRecord::Migration
  def change
    create_table :team_admins do |t|
      t.string :team_name
      t.integer :user_id

      t.timestamps
    end
  end
end

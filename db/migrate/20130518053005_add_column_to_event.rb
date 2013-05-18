class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :team_1, :string
    add_column :events, :team_2, :string
  end
end

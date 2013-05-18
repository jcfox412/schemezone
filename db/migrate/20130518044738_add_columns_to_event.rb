class AddColumnsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :description, :string
    add_column :events, :image_url, :string
  end
end

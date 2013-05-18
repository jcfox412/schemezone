class AddEndorsementsToSchemes < ActiveRecord::Migration
  def change
  	add_column :schemes, :is_endorsed, :boolean
  	add_column :schemes, :endorsed_by, :string
  end
end

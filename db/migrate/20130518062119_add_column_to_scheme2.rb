class AddColumnToScheme2 < ActiveRecord::Migration
  def change
    add_column :schemes, :team_name, :string
  end
end

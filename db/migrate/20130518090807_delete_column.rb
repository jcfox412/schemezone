class DeleteColumn < ActiveRecord::Migration
  def change
    remove_column :schemes, :string
  end
end

class DeleteFromJoinTablr < ActiveRecord::Migration
  def change
    remove_column :schemes_users, :created_at
    remove_column :schemes_users, :updated_at
  end
end

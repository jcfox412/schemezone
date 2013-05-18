class RenameTable < ActiveRecord::Migration
  def change
    rename_table :user_scheme_watchlists, :schemes_users
  end
end

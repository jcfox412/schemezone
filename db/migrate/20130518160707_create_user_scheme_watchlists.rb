class CreateUserSchemeWatchlists < ActiveRecord::Migration
  def change
    create_table :user_scheme_watchlists do |t|
      t.integer :user_id
      t.integer :scheme_id

      t.timestamps
    end
  end
end

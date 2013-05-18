class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :stubhub_userId
      t.string :seat

      t.timestamps
    end
  end
end

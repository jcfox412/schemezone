class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :scheme_id
      t.integer :user_id

      t.timestamps
    end
  end
end

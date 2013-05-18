class CreateSchemes < ActiveRecord::Migration
  def change
    create_table :schemes do |t|
      t.string :type
      t.string :creator_id
      t.string :string
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end

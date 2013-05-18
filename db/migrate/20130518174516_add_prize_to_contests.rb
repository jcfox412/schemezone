class AddPrizeToContests < ActiveRecord::Migration
  def change
  	add_column :contests, :prize_description, :string
  end
end

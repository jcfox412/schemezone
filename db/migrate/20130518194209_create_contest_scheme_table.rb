class CreateContestSchemeTable < ActiveRecord::Migration
  def up
  	create_table :contests_schemes, :id => false do |t|
  		t.integer :contest_id
  		t.integer :scheme_id
  	end
  end

  def down
  end
end

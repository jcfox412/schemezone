class AddColumnToScheme < ActiveRecord::Migration
  def change
    add_column :schemes, :image_url, :string
  end
end

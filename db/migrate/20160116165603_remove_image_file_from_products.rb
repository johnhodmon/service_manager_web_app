class RemoveImageFileFromProducts < ActiveRecord::Migration
  def change
  		remove_column :products, :image_file
  end
end

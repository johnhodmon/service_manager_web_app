class AddStreetToEngineers < ActiveRecord::Migration
  def change
    add_column :engineers, :street, :string
  end
end

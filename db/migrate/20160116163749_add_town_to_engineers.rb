class AddTownToEngineers < ActiveRecord::Migration
  def change
    add_column :engineers, :town, :string
  end
end

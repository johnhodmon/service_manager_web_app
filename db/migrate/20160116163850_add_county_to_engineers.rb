class AddCountyToEngineers < ActiveRecord::Migration
  def change
    add_column :engineers, :county, :string
  end
end

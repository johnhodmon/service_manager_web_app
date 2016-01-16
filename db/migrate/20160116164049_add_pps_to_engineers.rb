class AddPpsToEngineers < ActiveRecord::Migration
  def change
    add_column :engineers, :pps, :string
  end
end

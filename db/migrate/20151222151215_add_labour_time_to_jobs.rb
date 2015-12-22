class AddLabourTimeToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :labour_time, :decimal
  end
end

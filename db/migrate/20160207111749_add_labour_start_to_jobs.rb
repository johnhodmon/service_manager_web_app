class AddLabourStartToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :labour_start, :time
  end
end

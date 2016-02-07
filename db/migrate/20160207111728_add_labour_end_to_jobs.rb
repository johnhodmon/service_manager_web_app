class AddLabourEndToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :labour_end, :time
  end
end

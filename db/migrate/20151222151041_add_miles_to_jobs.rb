class AddMilesToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :miles, :integer
  end
end

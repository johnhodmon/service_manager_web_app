class AddAllocationDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :allocation_date, :datetime
  end
end

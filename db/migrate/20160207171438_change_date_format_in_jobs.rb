class ChangeDateFormatInJobs < ActiveRecord::Migration
  def change
  	 change_column :jobs, :travel_start, :datetime
  	 change_column :jobs, :travel_end, :datetime
  	 change_column :jobs, :labour_start, :datetime
  	 change_column :jobs, :labour_end, :datetime
  end
end

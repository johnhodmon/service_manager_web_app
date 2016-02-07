class AddTravelStartToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :travel_start, :time
  end
end

class AddTravelEndToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :travel_end, :time
  end
end

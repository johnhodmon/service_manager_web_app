class RemoveReportFromJobs < ActiveRecord::Migration
  def change
  		remove_column :jobs, :report
  end
end

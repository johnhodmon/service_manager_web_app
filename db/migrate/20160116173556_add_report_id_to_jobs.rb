class AddReportIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :report_id, :integer
  end
end

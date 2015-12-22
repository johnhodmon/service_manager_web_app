class AddReportToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :report, :string
  end
end

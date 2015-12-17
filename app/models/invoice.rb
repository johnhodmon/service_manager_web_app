class Invoice < ActiveRecord::Base
	belongs_to :job
	validates :invoice_number, presence: true
	validates :job_id, presence: true
end

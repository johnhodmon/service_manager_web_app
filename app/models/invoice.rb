class Invoice < ActiveRecord::Base
	belongs_to :job
	validates :invoice_number, presence: true
	
end

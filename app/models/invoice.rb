class Invoice < ActiveRecord::Base
	
	validates :invoice_number, presence: true
	belongs_to :job
	
end

class Invoice < ActiveRecord::Base
	@@cost_per_mile = 1.25
	@@labour_per_hour=25.00
	@@vat_rate=0.135
	validates :invoice_number, presence: true
	belongs_to :job





def calculate_total_cost_of_parts
	total=0
	self.job.parts_used.each do |part|
		total+=part.cost
	end
	total
end

def self.cost_per_mile
	@@cost_per_mile
end


def self.vat_rate
	@@vat_rate
end

def self.labour_per_hour
	@@labour_per_hour
	end
	
	
end





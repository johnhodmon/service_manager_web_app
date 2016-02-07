module InvoicesHelper

	
def calculate_travel_cost 
	calculate_hours_travelling * Invoice.cost_per_hour_travel
end

def calculate_labour_cost 
	calculate_hours_labour * Invoice.labour_per_hour
end


def calculate_hours_travelling
	if (@invoice.job.travel_start==nil||@invoice.job.travel_end==nil)
		return 0

	else
		return ((@invoice.job.travel_end-@invoice.job.travel_start)/1.hour).round
	end
end

def calculate_hours_labour
	if (@invoice.job.labour_start==nil||@invoice.job.labour_end==nil)
		return 0

	else
		return ((@invoice.job.labour_end-@invoice.job.labour_start)/1.hour).round
	end
end


def calculate_part_cost (part, quantity)

	part.cost*quantity
	
end




end

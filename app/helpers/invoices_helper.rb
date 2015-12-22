module InvoicesHelper
def calculate_travel_cost 
	@invoice.job.miles * Invoice.cost_per_mile
end

def calculate_labour_cost 
	@invoice.job.labour_time * Invoice.labour_per_hour
end



def calculate_part_cost (part, quantity)

	part.cost*quantity
	
end




end

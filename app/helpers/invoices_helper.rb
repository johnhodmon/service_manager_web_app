module InvoicesHelper

	
def calculate_travel_cost 
	((@invoice.job.travel_end-@invoice.job.travel_start)/1.hour).round * Invoice.cost_per_hour_travel
end

def calculate_labour_cost 
	((@invoice.job.labour_end-@invoice.job.labour_start)/1.hour).round * Invoice.labour_per_hour
end



def calculate_part_cost (part, quantity)

	part.cost*quantity
	
end




end

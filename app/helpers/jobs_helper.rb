module JobsHelper

	def getPartListWithNums(part_list)

	part_list_with_part_numbers=part_list.map{
		|pl| p=Part.find(pl.part_id)
		{part_id:p.id,part_number:p.part_number,description:p.description}
	}

	part_list_with_part_numbers

end

def getJobPartWithNums(job_parts)

	job_part_with_part_numbers=job_parts.map{
		|jp| p=Part.find(jp.part_id)
		{jobPartId:jp.id,partNumber:p.part_number,description:p.description,quantity:jp.quantity}
	}

	job_part_with_part_numbers

end

  def jobsCustomerNameSearch(name,jobs)
         matches = []
         @jobs.each do |job|
           if job.customer_product.customer.name.downcase.match(name.downcase)
              matches << job
           end
         end
         matches
       end

         def jobsDateSearch(date,jobs)
         matches = []
         @jobs.each do |job|
           if job.created_at.strftime("%d/%m/%Y").match(date.downcase)
              matches << job
           end
         end
         matches
       end



end

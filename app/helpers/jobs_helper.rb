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


end

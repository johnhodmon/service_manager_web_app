module JobsHelper

	def getPartListWithNums(part_list)

	part_list_with_part_numbers=part_list.map{
		|pl| p=Part.find(pl.part_id)
		{id:p.part_number,part_number:pl.part_id,description:p.description}
	}

	part_list_with_part_numbers

end

end

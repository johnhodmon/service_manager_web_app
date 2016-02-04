module JobPartsHelper

	def reduceStock (jobpart)
		

	Part.find(jobpart.part_id).quantity_in_stock=100
			
		
	end


	def increaseStock(jobpart)
		
		
	Part.find_by(id:jobpart.part_id).quantity_in_stock=Part.find_by(id:jobpart.part_id).quantity_in_stock+jobpart.quantity;

		
	end
end

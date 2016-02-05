module JobPartsHelper

	def reduceStock (jobpart)
		

	p=Part.find(jobpart.part_id)
	if (p)
		quantity=jobpart.quantity
		updatedQuantity=p.quantity_in_stock-quantity
	p.update_attribute(:quantity_in_stock,updatedQuantity)
		
	end

end


	def increaseStock(jobpart)
			p=Part.find(jobpart.part_id)
		if (p)
		quantity=jobpart.quantity
		updatedQuantity=p.quantity_in_stock+quantity
	p.update_attribute(:quantity_in_stock,updatedQuantity)
		
	end

		
	end

	def updateStock(jobpart,quantity)
		
		p=Part.find(jobpart.part_id)
					
		updatedQuantity=p.quantity_in_stock-(jobpart.quantity-quantity)
		p.update_attribute(:quantity_in_stock,updatedQuantity)





	end
		
end

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
		
		if quantity<jobpart.quantity
			increaseStock(jobpart)

		elsif quantity>jobpart.quantity
			reduceStock(jobpart)
		end
	end
		
end

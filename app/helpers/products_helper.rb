module ProductsHelper
		 def productDescriptionSearch(description,products)
         matches = []
         @products.each do |product|
           if product.description.downcase.match(description.downcase)
              matches << product
           end
         end
         matches
       end

       	 def productManufacturerSearch(manufacturer,products)
         matches = []
         @products.each do |product|
           if product.manufacturer.name.downcase.match(manufacturer.downcase)
              matches << product
           end
         end
         matches
       end
end

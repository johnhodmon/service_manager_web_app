module CustomersHelper
	 def customerNameSearch(name,customers)
         matches = []
         @customers.each do |customer|
           if customer.name.downcase.match(name.downcase)
              matches << customer
           end
         end
         matches
       end

       	 def customerEmailSearch(email,customers)
         matches = []
         @customers.each do |customer|
           if customer.email.downcase.match(email.downcase)
              matches << customer
           end
         end
         matches
       end
end



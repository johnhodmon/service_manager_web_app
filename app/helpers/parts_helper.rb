module PartsHelper
	 def partDescriptionSearch(description,parts)
         matches = []
         @parts.each do |part|
           if part.description.downcase.match(description.downcase)
              matches << part
           end
         end
         matches
       end

        def partNumberSearch(partNumber,parts)
         matches = []
         @parts.each do |part|
           if part.part_number.downcase.match(partNumber.downcase)
              matches << part
           end
         end
         matches
       end

end

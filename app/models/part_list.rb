class PartList < ActiveRecord::Base
	belongs_to :part
	belongs_to :product
end

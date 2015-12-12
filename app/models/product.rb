class Product < ActiveRecord::Base

	has_many parts_contained, :through => :part_lists, :source => :part
	belongs_to :customer
	belongs_to :manufacturer
end

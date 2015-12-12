class Product < ActiveRecord::Base

	has_many :parts_contained, :through => :part_lists, :source => :part
	belongs_to :customer
	belongs_to :manufacturer
	validates :product_number, presence:true
	validates :description, presence:true
	validates :cost, presence:true
	validates :manufacturer_id, presence:true
end

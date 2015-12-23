class Product < ActiveRecord::Base

	has_many :parts_contained, :through => :part_lists, :source => :part
	has_many :owned_by, :through => :customer_products, :source => :customer
	has_many :customer_products
	has_many :jobs
	has_many :part_lists
	belongs_to :manufacturer
	validates :product_number, presence:true
	validates :description, presence:true
	
	
	
end


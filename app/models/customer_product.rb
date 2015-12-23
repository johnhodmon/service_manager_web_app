class CustomerProduct < ActiveRecord::Base
	belongs_to :customer 
	has_many :customer_products
	has_many :owned_products, :through => :customer_products, :source => :product
end

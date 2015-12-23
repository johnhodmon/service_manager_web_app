class Customer < ActiveRecord::Base
	has_many :customer_products
	has_many :customer_products
	has_many :owned_products, :through => :customer_products, :source => :product
	validates :name, presence: true
	validates :town, presence: true
	validates :county, presence: true
	validates :phone, presence: true

	
end

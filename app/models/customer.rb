class Customer < ActiveRecord::Base
	has_many :customer_products
	validates :name, presence: true
	validates :town, presence: true
	validates :county, presence: true
	validates :phone, presence: true

	
end

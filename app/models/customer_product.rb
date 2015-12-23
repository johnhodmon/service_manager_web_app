class CustomerProduct < ActiveRecord::Base
	belongs_to :customer 
	belongs_to :product
	has_many :jobs
end

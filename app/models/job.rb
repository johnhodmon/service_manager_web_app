class Job < ActiveRecord::Base
	has_many :parts_used, :through => :job_parts, :source => :part
	belongs_to :engineer
	belongs_to :customer_product
	has_one :invoice
	has_many :job_parts
	has_many :parts_contained, :through => :job_parts, :source => :part
	validates :reported_fault, presence: true
	
end

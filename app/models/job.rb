class Job < ActiveRecord::Base
	has_many :parts_used, :through => :job_parts, :source => :part
	belongs_to :engineer
	belongs_to :product	
	
	has_many :parts_contained, :through => :job_parts, :source => :part
	validates :reported_fault, presence: true
	validates :product_id, presence: true
end

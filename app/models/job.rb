class Job < ActiveRecord::Base
	has_many parts_used, :through => :job_parts, :source => :part
	belongs_to :engineer
	belongs_to :product
end

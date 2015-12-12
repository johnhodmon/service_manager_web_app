class Part < ActiveRecord::Base
	has_many used_on_jobs, :through => :job_parts, :source => :job
	has_many used_on_products, :through => :part_lists, :source => :product
end

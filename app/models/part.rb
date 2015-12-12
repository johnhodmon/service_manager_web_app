class Part < ActiveRecord::Base
	has_many :used_on_jobs, :through => :job_parts, :source => :job
	has_many :used_on_products, :through => :part_lists, :source => :product
	validates :part_number, presence:true
	validates :description, presence:true
	validates :cost, presence:true
end

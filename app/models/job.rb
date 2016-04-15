class Job < ActiveRecord::Base
	has_many :parts_used, :through => :job_parts, :source => :part
	belongs_to :engineer
	belongs_to :customer_product
	has_one :report, dependent: :destroy
	has_one :invoice, dependent: :destroy
	has_many :job_parts
	has_many :photos
	has_many :videos
	has_many :parts_contained, :through => :job_parts, :source => :part
	validates :reported_fault, presence: true


	
end

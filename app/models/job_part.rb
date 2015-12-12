class JobPart < ActiveRecord::Base
	belongs_to :job 
	belongs_to :part

end

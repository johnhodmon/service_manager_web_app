class Engineer < User
	has_many :jobs
	validates :name, presence: true
	validates :email, presence: true

end

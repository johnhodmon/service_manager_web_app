class Manufacturer < ActiveRecord::Base
	has_many :products
	validates :name, presence :true
	validates :town, presence :true
	validates :county, presence :true
	validates :phone, presence :true
	validates :email, presence :true
end

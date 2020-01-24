class Farmer < ApplicationRecord

	validates :mobile_number, :first_name, :last_name, presence: true
	validates :mobile_number, :email_id, uniqueness: true
		
	validates :email_id, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }, allow_blank: true
	validates :mobile_number, length: { is: 10 }, numericality: { only_integer: true }

	before_save :titleize_names



	def titleize_names
		self.first_name = self.first_name.titleize
		self.last_name = self.last_name.titleize
	end

	
	

	has_one :address
	has_many :farmer_instruments
	has_many :instruments, through: :farmer_instruments

	has_many :rents
	has_many :rented_instruments, through: :rents

end

class Address < ApplicationRecord
	belongs_to :farmer

	validates :state, :country, :line1, :city, :pincode, presence: true
	validates :farmer_id, uniqueness: true
	validates :pincode, length: { is: 6 }, numericality: { only_integer: true }

end

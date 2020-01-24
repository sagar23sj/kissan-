class Instrument < ApplicationRecord

	validates :name, :brand, presence: true

	has_many :farmer_instruments
	has_many :farmers, through: :farmer_instruments

	

	#has_many :farmer_instrument
end

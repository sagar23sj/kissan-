class FarmerInstrument < ApplicationRecord

	validates :rent_per_hour, :is_available, :deposit, presence: true
	validates :rent_per_hour, :deposit,  numericality: {only_float: true}
	validates :is_available, inclusion: { in: [ true, false ] }

	belongs_to :farmer
	belongs_to :instrument

	has_one :rent
	#has_one :farmer
end

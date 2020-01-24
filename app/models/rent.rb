class Rent < ApplicationRecord

	validates :farmer_id, :farmer_instrument_id, :total_charges, presence: true
	validates :total_charges, numericality: { only_float: true }
	belongs_to :farmer
	belongs_to :farmer_instrument
	
end

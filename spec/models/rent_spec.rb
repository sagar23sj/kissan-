require 'rails_helper'

RSpec.describe Rent, type: :model do

	before(:all) do
		@farmer = create(:farmer)
		@instrument = create(:instrument)
		@farmer_instrument = create(:farmer_instrument, farmer_id: @farmer.id, instrument_id: @instrument.id)
	end

	it 'should be created successfully' do
		#@farmer = Farmer.new(id: 11, first_name: "Sagar", last_name: "Sonwane", mobile_number: 7539518462, email_id: "sagar32012@gmail.com")
		@rent = create(:rent,farmer_id: @farmer.id,farmer_instrument_id: @farmer_instrument.id)

	
		#expect(@farmer.valid?).to eq true
		#expect(@farmer.save).to eq true
	  #@farmer.valid?
		#expect(@farmer.errors.messages).to eq 
	end
		
		it "is valid with valid attributes" do
			@rent = build(:rent, farmer_id: @farmer.id,farmer_instrument_id: @farmer_instrument.id)
			expect(@rent).to be_valid
		end
		
		it "is not valid without farmer ID" do
			@rent = build(:rent, farmer_id: nil, farmer_instrument_id: @farmer_instrument.id)
			expect(@rent).to_not be_valid
		end
		
		it "is not valid without a farmer instrument ID" do
			@rent = build(:rent, farmer_id: @farmer.id,farmer_instrument_id: nil)
			expect(@rent).to_not be_valid
		end

		it "is not valid without total amount" do
			@rent = build(:rent, farmer_id: @farmer.id, farmer_instrument_id: @farmer_instrument.id, total_charges: nil)

			expect(@rent).to_not be_valid
		end
		
		it "has valid final amount" do 
			@rent = build(:rent, farmer_id: @farmer.id, farmer_instrument_id: @farmer_instrument.id, total_charges: 7777)
			expect(@rent).to be_valid
		end
		



	

end





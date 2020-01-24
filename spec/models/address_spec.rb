require 'rails_helper'

RSpec.describe Address, type: :model do

	before(:all) do
		@farmer = create(:farmer)
	end

	it 'should be created successfully' do
		#@farmer = Farmer.new(id: 11, first_name: "Sagar", last_name: "Sonwane", mobile_number: 7539518462, email_id: "sagar32012@gmail.com")
		@address = create(:address,farmer_id: @farmer.id)

		puts @address.line1
		puts @address.line2

		#expect(@farmer.valid?).to eq true
		#expect(@farmer.save).to eq true
	  #@farmer.valid?
		#expect(@farmer.errors.messages).to eq 
	end
		
		it "is valid with valid attributes" do
			@address = build(:address, farmer_id: @farmer.id)
			expect(@address).to be_valid
		end
		
		it "is not valid without address line 1" do
			@address = build(:address, farmer_id: @farmer.id, line1: nil)
			expect(@address).to_not be_valid
		end
		
		it "is not valid without a pincode" do
			@farmer1 = build(:address, farmer_id: @farmer.id, pincode: nil)
			expect(@farmer1).to_not be_valid
		end

		it "is not valid without a city name" do
			@address = build(:address, farmer_id: @farmer.id, city: nil)
			expect(@address).to_not be_valid
		end
		
		it "has valid pincode" do 
			@address = build(:address, farmer_id: @farmer.id, pincode: "785412369")
			expect(@address).to_not be_valid
		end
		
		it "is not valid without a state name" do 
			@address = build(:address, farmer_id: @farmer.id, state: nil )
			expect(@address).to_not be_valid
		end
		

		it "is not valid without a country name" do 
			@address = build(:address, farmer_id: @farmer.id, country: nil)
			expect(@address).to_not be_valid
		end


	

end





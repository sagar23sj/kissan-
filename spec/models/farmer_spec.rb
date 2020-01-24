require 'rails_helper'

RSpec.describe Farmer, type: :model do

	it 'should be created successfully' do
		#@farmer = Farmer.new(id: 11, first_name: "Sagar", last_name: "Sonwane", mobile_number: 7539518462, email_id: "sagar32012@gmail.com")
		@farmer = create(:farmer)

		puts @farmer.id
		puts @farmer.first_name
		puts @farmer.last_name
		puts @farmer.mobile_number
		puts @farmer.email_id

		#expect(@farmer.valid?).to eq true
		#expect(@farmer.save).to eq true
	  #@farmer.valid?
		#expect(@farmer.errors.messages).to eq 
	end
		before(:all) do
			@farmer = create(:farmer)
		end
		
		it "is valid with valid attributes" do
			expect(@farmer).to be_valid
		end
		
		it "is not valid without a first name" do
			@farmer1 = build(:farmer, first_name: nil)
			expect(@farmer1).to_not be_valid
		end
		
		it "is not valid without a last name" do
			@farmer1 = build(:farmer, last_name: nil)
			expect(@farmer1).to_not be_valid
		end

		it "is not valid without a mobile number" do
			@farmer1 = build(:farmer, mobile_number: nil)
			expect(@farmer1).to_not be_valid
		end
		
		it "has valid mobile number" do 
			@farmer1 = build(:farmer, mobile_number: "785412369")
			expect(@farmer1).to_not be_valid
		end
		
		it "has valid email id" do 
			@farmer1 = build(:farmer, email_id: "sagar sonwane")
			expect(@farmer1).to_not be_valid
		end
		


	

end





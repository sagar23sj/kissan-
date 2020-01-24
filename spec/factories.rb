require 'faker'
'''

FactoryBot.define do
  
  factory :farmer_instrument do
    id {15}
    farmer_id {1}
		instrument_id {2}
		rent_per_hour {7800.0}
		is_available {"true"}
		deposit {7800.0}
		
	end


	factory :farmer do
    id {15}
    first_name {"Random_First_Name"}
		last_name {"Random_Last_Name"}
		mobile_number {1278364590}
		email_id {"random_user_name@email.com"}
		
	end
end


'''



FactoryBot.define do
  
  factory :farmer_instrument do
    id {Faker::Number.unique.number(digits: 2)}
    farmer_id {1}
		instrument_id {2}
		rent_per_hour {Faker::Commerce.price }
		is_available {true}
		deposit {Faker::Commerce.price }
		
	end


	factory :farmer do
    id {Faker::Number.unique.number(digits: 2)}
    first_name {Faker::Name.first_name }
		last_name {Faker::Name.last_name }
		mobile_number {Faker::Number.number(digits: 10)}
		email_id {Faker::Internet.free_email}
		
	end


	factory :instrument do
    id {Faker::Number.unique.number(digits: 2)}
    name {Faker::Commerce.product_name }
		brand {Faker::Company.name }
		specification {Faker::Restaurant.description}

	end

	factory :address do
		id {Faker::Number.unique.number(digits: 2)}
		farmer_id {1}
		line2 {Faker::Address.street_address}
		line1 {Faker::Address.street_name}
		city	{Faker::Address.city}
		pincode	{Faker::Number.number(digits: 6)}
		state	{Faker::Address.state}
		country	{Faker::Address.country}

	end


	factory :rent do
		id {Faker::Number.unique.number(digits: 2)}
		farmer_id  {1}
		farmer_instrument_id  {1}
		total_charges  {Faker::Commerce.price }
		#rented_from_date  {}
		#rented_till_date  {}

	end

end

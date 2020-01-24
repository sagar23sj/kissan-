require 'rails_helper'

RSpec.describe FarmerInstrumentsController, type: :controller do


	before(:all) do
		@farmer = create(:farmer)
		@instrument = create(:instrument)
		@farmer_instrument = create(:farmer_instrument, farmer_id: @farmer.id, instrument_id: @instrument.id)

		puts @farmer.id
	end


	it 'Checking create new object template' do
		#@farmer_instrument  = FarmerInstrument.create(id: 15, farmer_id: 3, instrument_id: 2, rent_per_hour: 7500.0, is_available: true, deposit: 1000.0)
		get :new
		expect(response).to have_http_status(200)

	end


	it 'Checking index template' do
		#@farmer_instrument  = FarmerInstrument.create(id: 15, farmer_id: 3, instrument_id: 2, rent_per_hour: 7500.0, is_available: true, deposit: 1000.0)
		get :index
		expect(response).to have_http_status(200)
		#expect(response).to render_template(200)
		
	end


	it 'Checking show  template' do
		#@farmer_instrument  = FarmerInstrument.create(id: 15, farmer_id: 3, instrument_id: 2, rent_per_hour: 7500.0, is_available: true, deposit: 1000.0)
		get :show , params: {id: @farmer_instrument.id}
		expect(response).to have_http_status(200)

	
	end


	it 'Checking edit template' do
		#@farmer_instrument  = FarmerInstrument.create(id: 15, farmer_id: 3, instrument_id: 2, rent_per_hour: 7500.0, is_available: true, deposit: 1000.0)
		get :edit, params: {id: @farmer_instrument.id}
		expect(response).to have_http_status(200)
	end



end
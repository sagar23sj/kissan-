class FarmerInstrumentsController < ApplicationController


	def index
		@farmer_instruments = FarmerInstrument.all.includes(:farmer, :instrument)
		#@rents = Rent.all.includes(:farmer, :farmer_instrument)

		@farmers = Farmer.all.order("first_name ASC", "last_name ASC")

	end

	def show
		@farmer_details = FarmerInstrument.find(params[:id])
	end


	def new
		@farmer_list = Farmer.all.collect{ |u| [u.first_name, u.id]}
		@instrument_list = Instrument.all.collect{ |u| [u.name, u.brand, u.id]}
	end

	def edit
		@farmer_list = Farmer.all.collect{ |u| [u.first_name, u.id]}
		@instrument_list = Instrument.all.collect{ |u| [u.name, u.brand, u.id]}
		@farmer_instruments = FarmerInstrument.find(params[:id])
	end


	def create
		
		@new_ad = FarmerInstrument.create(permit_params)
		redirect_to farmer_instruments_path(@new_ad)
		#byebug
		#@farmer =@new_ad.farmer
		#render :show
		#render :rent_details
		#redirect_to farmer_instruments_path
		
		#@new_ad.save
		#redirect_to @new_ad
	end

	def update


		@new_ad = FarmerInstrument.find(params[:id])	
		@new_ad.update(permit_params)
		redirect_to farmer_instruments_path
	end


	private
	def permit_params
		#byebug
		#params["farmer_instrument"].permit(:farmer_id, :instrument_id, :rent_per_hour, :deposit, :is_available, :available_till, :next_available_at)
		params.require(:farmer_instrument).permit(:farmer_id, :instrument_id, :rent_per_hour, :deposit, :is_available, :available_till, :next_available_at)
	end

'''
	def permit_params2
		#byebug
		#params["farmer_instrument"].permit(:farmer_id, :instrument_id, :rent_per_hour, :deposit, :is_available, :available_till, :next_available_at)
		params.require(:farmer_instrument).permit(:farmer_id, :instrument_id, :rent_per_hour, :deposit, :is_available, :available_till, :next_available_at)
	end
	'''
	


end

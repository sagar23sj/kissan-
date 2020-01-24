class FarmersController < ApplicationController

	def index 
		@farmers = Farmer.all.order("first_name ASC", "last_name ASC")
	end

	def show
		@farmer_details = Farmer.find(params[:id])
	end
	
	def new

	end


	def create
		@new_ad = Farmer.create(permit_params)
		redirect_to farmer_path(@new_ad)
	end

	def edit

	end

	def update
	
	end



	private
	def permit_params
		#byebug
		#params["farmer_instrument"].permit(:farmer_id, :instrument_id, :rent_per_hour, :deposit, :is_available, :available_till, :next_available_at)
		params.require(:farmer_instruments).permit(:first_name, :last_name, :mobile_number, :email_id, :line1, :line2, :city, :state, :pincode, :country)
	
	end
end

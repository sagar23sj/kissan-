class RentDetailsController < ApplicationController

	def index
		@farmers = Farmer.all.order("first_name ASC", "last_name ASC")
	end

	def show

	end

	def new

	end

	def create

	end


	def edit

	end

	def update

	end
	

end

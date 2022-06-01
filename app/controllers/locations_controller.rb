class LocationsController < ApplicationController

	def index
		@places =Place.all
	end

	def show
		@place = Place.find(params[:id])
	end

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)

    	if @place.save
      		redirect_to "/locations/#{@place.id}"
    	else
      		render :new
    	end
  	end

	def edit
		@place = Place.find(params[:id])
	end

	def update
		# binding.pry
		@place = Place.find(params[:id])

		if @place.update(place_params)
			redirect_to "/locations/#{@place.id}"
		else
			render :edit
		end
	end

	def destroy
		@place =Place.find(params[:id])
		@place.destroy
		redirect_to root_path
	end

private

    def place_params
      params.require(:place).permit(:Shop_name, :Code, :Description)
    end

end

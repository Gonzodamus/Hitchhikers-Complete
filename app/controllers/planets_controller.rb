class PlanetsController < ApplicationController
	def new
		@planet = Planet.new
	end

	def create
		@planet = Planet.new(planet_params)
		if @planet.save
			redirect_to planet_path(@planet)
		else
			render :new
		end
	end

	def index
		@planets = Planet.all
	end

	def show
		@planet = Planet.find(params[:id])
	end

	private

	def planet_params
		params.require(:planet).permit(:name, :climate, :size, :description)
	end
end

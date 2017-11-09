class PopulationsController < ApplicationController

	def create
		@population = Population.new(population_params)

		if @population.save
			if params[:population][:page] == "planet page"
				redirect_to planet_path(Planet.find(params[:population][:planet_id]))
			elsif params[:population][:page] == "alien race page"
				redirect_to alien_race_path(AlienRace.find(params[:population][:alien_race_id]))
			else
				redirect_to population_path(@population)
			end
		else 
			render :new
		end

	end

	def new
		@population = Population.new
	end

	def show
		@population = Population.find(params[:id])
	end


	private

	def population_params
		params.require(:population).permit(:planet_id, :alien_race_id, :size_input)
	end
end

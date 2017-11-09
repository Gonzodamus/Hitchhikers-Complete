class AlienRacesController < ApplicationController
	def new
		@alien_race = AlienRace.new
	end

	def create
		@alien_race = AlienRace.new(alien_race_params)
		if @alien_race.save
			redirect_to alien_race_path(@alien_race)
		else
			render :new
		end
	end

	def index
		@alien_races = AlienRace.all
	end

	def show
		@alien_race = AlienRace.find(params[:id])
	end

	private

	def alien_race_params
		params.require(:alien_race).permit(:name, :biome, :demeanor, :description)
	end
end

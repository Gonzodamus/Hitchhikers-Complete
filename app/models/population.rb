class Population < ApplicationRecord
	belongs_to :planet
	belongs_to :alien_race

	validates :size, presence: true
	validates :size, numericality: {greater_than: 0}
	validates :alien_race, uniqueness: {scope: :planet}
	# validate :unique_relation

	# def unique_relation
	# 	if Population.find_by(alien_race_id: alien_race_id, planet_id: planet_id)
	# 		errors.add(:population, "of #{AlienRace.find(alien_race_id).name} already exists on #{Planet.find(planet_id).name}")
	# 	end

	# end



	def size_input=(input)
		if input.to_i == 0
			self.extinct = true
		else
			self.extinct = false
		end

		self.size = input
	end
end

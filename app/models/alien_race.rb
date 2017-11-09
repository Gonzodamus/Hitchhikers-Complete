class AlienRace < ApplicationRecord
	has_many :populations
	has_many :planets, through: :populations

	validates :name, presence: true, uniqueness: true
	validates :biome, presence: true
	validates :demeanor, presence: true
	validates :description, presence: true

	validate :genus_species

	def genus_species
		if name.split.length != 2
			errors.add(:name, "Must be written in the 'genus species' format")
		end
	end


end

class Planet < ApplicationRecord
	has_many :populations
	has_many :alien_races, through: :populations

	validates :name, presence: true, uniqueness: true
	validates :climate, presence: true
	validates :size, presence: true
	validates :size, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
	validates :description, presence: true
end

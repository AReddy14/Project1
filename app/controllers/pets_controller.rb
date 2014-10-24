class PetsController < ApplicationController
	def index
		# These come from the URL
		# Example: http://localhost:3000/pets?location=Boston,MA&kind=cat
		location = params[:location]
		animal = params[:animal]
		# binding.pry
		if !location.nil? && !animal.nil?
			# Search Petfinder
			@shelter_ids = []

			@pets = Pet.search(animal, location)
			@pets.each do |pet|
				@shelter_ids << pet.shelter_id
			end
		else
			# Return an empty array of pets so that it doesn't get a NoMethod error when calling .each
			@pets = []
			@shelter_ids = []#may want to get rid of all the shelter_ids in index and change the location to somewhere better.
		end
		#might need to switch this with to a call like what is in the gem, petfinder.find_pets(); may even want to avoid having anything in here so that I can go to the next stage with this empty before 
	end
	def show
		
	end
end
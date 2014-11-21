class PetsController < ApplicationController
	
	$search_list

	def index
		# These come from the URL
		# Example: http://localhost:3000/pets?location=Boston,MA&kind=cat
		location = params[:location]
		animal = params[:animal]
		# binding.pry
		if !location.nil? && !animal.nil?
			# Search Petfinder
			@shelter_ids = []

			@pet_list = Pet.search(animal, location)
			@pet_list.each do |pet|
				@shelter_ids << pet.shelter_id
			end
			$search_list = @pet_list
		else
			# Return an empty array of pets so that it doesn't get a NoMethod error when calling .each
			@pet_list = []
			@shelter_ids = []#may want to get rid of all the shelter_ids in index and change the location to somewhere better.
		end
		#might need to switch this with to a call like what is in the gem, petfinder.find_pets(); may even want to avoid having anything in here so that I can go to the next stage with this empty before 
	end
	def show
		# @pet = Pet.new(pet_params)
		# animal_id = params[:]
		@animal_id = params[:id] #successfully grabs the id for the animal I'm looking at. 
		# @pet = @pet_list.find(@animal_id)
		# @pet.name = "Jack"
	end
end
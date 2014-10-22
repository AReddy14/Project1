class PetsController < ApplicationController
	def index
		# These come from the URL
		# Example: http://localhost:3000/pets?location=Boston,MA&kind=cat
		location = params[:location]
		animal = params[:animal]
		# binding.pry
		if !location.nil? && !animal.nil?
			# Search Petfinder
			@pets = Pet.search(animal, location)
		else
			# Return an empty array of pets so that it doesn't get a NoMethod error when calling .each
			@pets = []
		end
		#might need to switch this with to a call like what is in the gem, petfinder.find_pets(); may even want to avoid having anything in here so that I can go to the next stage with this empty before 
	end
	# def show
		
	# end
end
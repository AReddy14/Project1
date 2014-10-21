class PetsController < ApplicationController
	def index
		@pets = Pet.all#might need to switch this with to a call like what is in the gem, petfinder.find_pets(); may even want to avoid having anything in here so that I can go to the next stage with this empty before 
	end
	
end
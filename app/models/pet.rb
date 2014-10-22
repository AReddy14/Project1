class Pet < ActiveRecord::Base
	KINDS = ['cat', 'dog', 'bird']

	Petfinder.configure do |config|
		config.api_key = ENV['PET_FINDER_KEY']
		config.api_secret = ENV['PET_FINDER_SECRET']
	end
	@@petfinder = Petfinder::Client.new

	def self.search(animal, location)
		# Returns XML
		# Example: Pet.search('cat', 'Boston, MA')
		@@petfinder.find_pets(animal, location)
	end
end
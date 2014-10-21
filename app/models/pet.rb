class Pet < ActiveRecord::Base
	Petfinder.configure do |config|
		config.api_key = ENV['PET_FINDER_KEY']
		config.api_secret = ENV['PET_FINDER_SECRET']
	end
	petfinder = Petfinder::Client.new
end
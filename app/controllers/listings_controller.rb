class ListingsController < ApplicationController
	before_filter :load_resources
	def index
		@listings = @resources.first(20)
	end


	def location_search
		city = params[:city]
		@listings = @resources.select{|r| r.address.include?(city)}
	end

	# Because I don't have a database,
	# need to read listings from a file
	def load_resources
		Listing
		@resources = YAML::load(File.open('listings.yml'))
	end
end
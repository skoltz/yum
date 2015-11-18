class WelcomeController < ApplicationController

	def welcome
		@picture = Picture.new
		render('welcome')
	end

	def all
		# binding.pry
		# for form
		@picture = Picture.new
		# for grid of all photos
		@pic = Picture.all
		render('all')
	end

end

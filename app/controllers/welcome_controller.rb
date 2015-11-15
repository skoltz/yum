class WelcomeController < ApplicationController

	def welcome
		@picture = Picture.new
		render('welcome')
	end

	def all
		binding.pry
		@pic = Picture.all
		render('all')
	end

end

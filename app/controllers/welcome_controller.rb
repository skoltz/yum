class WelcomeController < ApplicationController

	def welcome
		@picture = Picture.new
		render('welcome')
	end

	def all
		@pic = Picture.all
		render('all')
	end

end

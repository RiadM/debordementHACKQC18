class SurversesController < ApplicationController

  	def show
  		@surverses = Surverse.all
  	end

  	def new
  		@surverse = Surverses.new
  	end

	def count
		Surverses.count
	end

end

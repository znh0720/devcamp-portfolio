class PorfoliosController < ApplicationController
	def index
		@portfolio_item = Porfolio.all
	end
end

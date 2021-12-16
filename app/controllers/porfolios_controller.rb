class PorfoliosController < ApplicationController
	def index
		@portfolio_item = Porfolio.all
	end

	def new
		@portfolio_item = Porfolio.new
	end

	def create
	    @portfolio_item = Porfolio.new(params.require(:porfolio).permit(:title, :subtitle, :body))

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to porfolios_path, notice: "Your portfolio item is now live" }
	       
	      else
	        format.html { render :new, status: :unprocessable_entity }
	        
	      end
    end
  end
end

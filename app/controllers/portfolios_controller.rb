class PortfoliosController < ApplicationController
	def new
	end
	def index
		@portfolios = Portfolio.all
	end
	def create
		@portfolio = Portfolio.new(portfolio_params)

		@portfolio.save
		redirect_to @portfolio
	end



  def show 
		@portfolio = Portfolio.find(params[:id])
	end
	def list
  @portfolio = Portfolio.all
end

	  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :text, :avatar)
  end
end

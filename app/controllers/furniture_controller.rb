class FurnitureController < ApplicationController
	def new
	end
	def index
		@furnitures = Furniture.all
	end
	def create
		@furniture = Furniture.new(furniture_params)

		@furniture.save
		redirect_to @furniture
	end



  def show 
		@furniture = Furniture.find(params[:id])
			
	end
	def list
  @furniture = Furniture.all
end

	  private
  def furniture_params
    params.require(:furniture).permit(:room_id,:description)
  end
end

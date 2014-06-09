class HousesController < ApplicationController
	def new
	end
	def index
		@houses = House.where(:user_id => current_user.id)
	end
	def create
		@house = House.new(house_params)

		@house.save
		redirect_to @house
	end



  def show 
		@house = House.find(params[:id])
		@room = Room.new
		@rooms = @house.room.all
	end
	def list
  @house = House.all
end

	  private
  def house_params
    params.require(:house).permit(:user_id)
  end
end

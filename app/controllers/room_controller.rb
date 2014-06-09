class RoomController < ApplicationController
	 #before_filter :load_house

	def new
	end
	def index
		 

		@rooms = Room.all
		@rooms = @house.rooms.all
	end
	def create
		@room = Room.new(room_params)
		#@house = House.find(params[:house_id])
		#@room = @house.room.new(room_params)
		
		@room.save
		redirect_to @room



	end



  def show 
		@room = Room.find(params[:id])
				@furniture = Furniture.new
		@furnitures = @room.furniture.all
	end
	def list
  @room = Room.all
end

	  private
  def room_params
    params.require(:room).permit(:house_id,:description)
  end
  # def load_house
     
   # end
end

class HousesController < ApplicationController

def index
  @houses = House.all

end

def show
  @house = House.find(params[:id])
  @members = @house.members
  @member = Member.new
end

def new
  @house = House.new
end


def edit
  @house = House.find(params[:id])
end



def update
  @house = House.find(params[:id])

  if @house.update(house_params)
    redirect_to @house
  else
    render :new
  end
end





def create
  @house = House.new(house_params)

  if @house.save
    redirect_to @house
  else
    render action: 'new'
  end
end






def house_params
  params.require(:house).permit(:name, :motto, :author, :source_material, :image)
end


end

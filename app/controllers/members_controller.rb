class MembersController < ApplicationController

  def new
    @house = House.new
    @member = Member.new
  end


  def create
    @house = House.find_by(id: params[:house_id])
    @members = @house.members
    @member = Member.new(member_params)
    @house = House.find_by(id: params[:house_id])
    @member.house = @house


    if @member.save
      redirect_to house_path(@house)
    else
      # redirect_to house_path(@house)
      render 'houses/show'
    end


  end



  def show
    @member = Member.find_by(id: params[:id])
    @house = @member.house
  end



  def index
    @members = Member.all
  end


  def member_params
    params.require(:member).permit(:first_name, :last_name)
  end



end

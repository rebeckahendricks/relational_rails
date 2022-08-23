class VacationHomesController < ApplicationController
  def index
    @vacation_homes = ['Home 1', 'Home 2', 'Home 3']
  end

  def new
  end

 def create
   vacation_home = VacationHome.new({
     listing_name: params[:vacation_homes][:listing_name],
     city: params[:vacation_homes][:city],
     state: params[:vacation_homes][:state],
     country: params[:vacation_homes][:country]
     })
     vacation_home.save

     redirect_to '/vacation_homes'
 end
end

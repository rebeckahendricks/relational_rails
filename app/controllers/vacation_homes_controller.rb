class VacationHomesController < ApplicationController
  def index
    @vacation_homes = ['Home 1', 'Home 2', 'Home 3']
  end
end

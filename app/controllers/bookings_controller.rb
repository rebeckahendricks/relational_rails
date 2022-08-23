class BookingsController < ApplicationController
  def index
    @bookings = ["Booking 1", "Booking 2", "Booking 3"]
  end
end

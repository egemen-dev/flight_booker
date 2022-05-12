class BookingsController < ApplicationController
  def new
    @chosen_flight_params = params
    @booking = Booking.new
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_id)
  end
end

class BookingsController < ApplicationController
  def new
    @chosen_flight_params = params
    @booking = Booking.new
    pass_num = @chosen_flight_params[:passenger_number].to_i
    pass_num.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "You have successfully book the flight."
      redirect_to booking_path(@booking)
    else
      flash[:error] = "Try again!"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end

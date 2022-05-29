# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def booked_email
    @booking = Booking.last
    @passenger = @booking.passengers.first
    PassengerMailer.booked_email(@passenger)
  end
end

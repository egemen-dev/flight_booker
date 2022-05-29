class PassengerMailer < ApplicationMailer
  default from: 'Flight Booker App'

  def booked_email(passenger)
    @passenger = passenger
    @passenger.email
    @url = 'https://immense-oasis-72394.herokuapp.com/'
    mail(to: @passenger.email, subject: 'Flight Booker - Successfully created a booking.')
  end
end

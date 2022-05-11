class FlightsController < ApplicationController
  def index
    console
    @flights = Flight.all
    @departure_airports = Airport.select(:id, :name, :location).map { |a| ["#{a.name} #{a.location}", a.id] }
    @arrival_airports = Airport.select(:id, :name, :location).map { |a| ["#{a.name} #{a.location}", a.id] }
    @flight_dates = Flight.select(:flight_date).distinct.map { |f| [f.flight_date.strftime("%d/%m/%Y"), f.flight_date] }
    @found = Flight.where(arrival_id: params[:arrival_id], departure_id: params[:departure_id], flight_date: "#{params["flight_date(3i)"]}/#{params["flight_date(2i)"]}/#{params["flight_date(1i)"]}")
  end
end

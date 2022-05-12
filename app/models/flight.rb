class Flight < ApplicationRecord
    has_many :bookings, foreign_key: :flight_id, class_name: 'Booking'
    has_many :passengers, through: :bookings
    belongs_to :departure, class_name: 'Airport'
    belongs_to :arrival, class_name: 'Airport'
end

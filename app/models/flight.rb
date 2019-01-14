class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

  has_many :bookings
  has_many :flights, through: :bookings
end

class Time 
  def time_formatted
    self.strftime("%m/%d/%Y")
  end
end
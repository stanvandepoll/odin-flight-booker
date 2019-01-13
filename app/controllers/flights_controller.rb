class FlightsController < ApplicationController
  def index
    @airports_array = Airport.all.map { |airport| [airport.location, airport.id] }
    @dates = Flight.all.map do |flight| 
      [flight.departure_time.time_formatted]
    end.uniq
  end
end

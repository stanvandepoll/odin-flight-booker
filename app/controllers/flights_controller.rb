class FlightsController < ApplicationController
  def index
    @airports_array = Airport.all.map { |airport| [airport.location, airport.id] }
  end
end

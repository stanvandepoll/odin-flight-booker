class FlightsController < ApplicationController
  def index
    @airports_array = Airport.all.map { |airport| [airport.location, airport.id] }
    @dates = Flight.all.map do |flight| 
      [flight.departure_time.time_formatted, flight.departure_time]
    end.uniq

    if params[:date] 
      @results = Flight.all.where("departure_airport_id = ? AND 
        arrival_airport_id = ? AND departure_time BETWEEN ? AND ?", 
        params[:from_code], params[:to_code], 
        params[:date].to_datetime.beginning_of_day,
        params[:date].to_datetime.end_of_day)
      @num_tickets = params[:num_tickets]
    end
  end
end

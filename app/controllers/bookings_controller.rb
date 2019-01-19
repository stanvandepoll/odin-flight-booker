class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by_id(params[:flight_id])
    @booking = Booking.new
    params[:num_tickets].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.passengers.each do |passenger| 
      PassengerMailer.thank_you_email(passenger).deliver_now!
    end
    redirect_to bookings_show_path(@booking)
  end

  def show
    @booking = Booking.find_by_id(params[:format])
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, 
        passengers_attributes: [:name, :email])
    end
end

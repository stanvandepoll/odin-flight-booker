class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

end

class Time 
  def time_formatted
    self.strftime("%m/%d/%Y")
  end
end
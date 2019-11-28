class Passenger 

    def initialize(name)
        @name = name
        @flight_numbers = []
    end 

    def name
        @name 
    end 

    def has_flight?(flight_num)
        @flight_numbers.include?(flight_num.upcase)
    end

    def add_flight(flight_num)
        has_flight?(flight_num) ? "Already added" : @flight_numbers << flight_num.upcase
    end
end 
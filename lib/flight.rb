class Flight 

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def capacity
        @capacity 
    end

    def flight_number
        @flight_number
    end

    def passengers
        @passengers 
    end 

    def full?
        @passengers.length == @capacity
    end

    def board_passenger(passenger)
        !full? && passenger.has_flight?(flight_number) ? passengers << passenger : "Cannot board"
    end

    def list_passengers 
        passengers.map {|passenger| passenger.name }
    end 

    def [](num)
        passengers[num]
    end

    def <<(passenger)
        board_passenger(passenger)
    end
end 
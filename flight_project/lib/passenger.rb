class Passenger

    attr_reader :name
    def initialize(name)

        @name = name
        @flight_numbers =[]
    end

    def has_flight?(flight_str)
        return true if @flight_numbers.include?(flight_str.downcase) || @flight_numbers.include?(flight_str.upcase)
        false
    end

    def add_flight(str)
        @flight_numbers << str.upcase if !has_flight?(str)
        false
    end
    

end
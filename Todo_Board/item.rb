class Item
    attr_accessor :title, :description

    def self.valid_date?(str)
        date_arr= str.split("-")
        year = date_arr[0]
        month = date_arr[1].to_i
        day = date_arr[2].to_i

        return false if year.length != 4
        return false if month  < 0 || month > 12
        return false if day < 1 || day > 31
        true
    end


    def initialize(title, deadline, description)
        @title = title
        raise ArgumentError.new "invalid date" if !Item.valid_date?(deadline)
        @deadline = deadline
        @description = description
    end

    def deadline= deadline
        raise ArgumentError.new "invalid date" if !Item.valid_date?(deadline)
        @deadline = deadline
    end

    
end




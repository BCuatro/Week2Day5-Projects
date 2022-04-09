
require "item"
class List
    attr_accessor :label

    def initialize(label)
        @label = label
        @items =[]
    end
    def add_item(title, deadline, description="")
        if !Item.valid_date?(deadline)
            return false
        else
        @item = Item.new(title, deadline, description)
        end
        true
    end
    def size
        @items.length
    end

    def valid_index?(index)
        [0...@items.length].include(index)

    end

    def swap(index_1, index_2)
        if valid_index?(index_1) && valid_index(index_2)
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1] 
            return true
        else
            false
        end
    end

    def [](index)
        if valid_index(index)
            print @item[index]
        else
            nil
        end
    end

    def priority
        @items.first
    end
end

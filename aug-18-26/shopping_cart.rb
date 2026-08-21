class Cart
    def initialize
        @items = []
    end


    def add(item)
        @items << item
    end

    def items
        @items
    end

    def empty?
        @items.empty?
    end

    def has_item?(item)
        @items.include?(item)
    end
end
class Counter

    attr_reader :counter

    def initialize(counter)
        @counter=counter
    end

    def increment_counter
        @counter+=1
    end

    def reset_counter
        @counter= 10
    end

end

counter=Counter.new(65)

p counter.counter

p counter.increment_counter

p counter.reset_counter
p counter.increment_counter
p counter.increment_counter

p counter.increment_counter
p counter.increment_counter

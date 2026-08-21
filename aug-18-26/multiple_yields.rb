class NumberProcessor
    def process
        yield 10
        yield 20
        yield 30
    end
end


processor = NumberProcessor.new

processor.process do |a|
    p a 
end
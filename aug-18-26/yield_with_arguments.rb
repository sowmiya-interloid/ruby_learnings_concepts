class NumberProcessor
    def process
        yield 10
    end
end 

processors = NumberProcessor.new
processors.process do |num|
    p num
end
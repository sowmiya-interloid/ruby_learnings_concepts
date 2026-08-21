class NumberProcessor
    def process
        yield
    end
end

processors = NumberProcessor.new

processors.process do 
    puts "Hii Hello"
end
    

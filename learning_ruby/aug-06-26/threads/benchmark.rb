def sum_with_plus
    sum=0

    (1..10000).each do |num|
        sum+=num
    end

    sum

end


def sum_with_reduce

    (1..10000).reduce(:+)

end


require 'benchmark'

Benchmark.bm do |x|
    x.report("plus:") {sum_with_plus}
    x.report("reduce:") {sum_with_reduce}
end
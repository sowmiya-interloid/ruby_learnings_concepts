p [1,2,3].map {|n| n*n }

p [1,2,3,4].select{ |n| n>2}

p [1,2,3].reduce(:+)

p (1..3).map{|n| n+1}

p [[1,2],[3]].flat_map {|a| a}

p [1,nil,2].compact


example = proc{|a,b| a}

p example.call(8,9)


def defexample
    yield 2
end

p defexample {|x| x*10 }



p 'hi'.respond_to?(:upcase)

p 5<=>3


p nil&.upcase


x=nil
x ||= 7
p x

p [3,1,2].sort_by {|n| -n}

p ({a:1,b:2}.map{|k,v| v})

p [1,2,3].partition(&:odd?)

p 'Ruby'.freeze.frozen?


p [1,1,1,2,3,4,5,5,5].uniq

p (1..4).group_by(&:even?)

p [1,2,3].each_with_object([]){|n,a| a<<n*2}


p ['a','b'].each_with_index.to_a
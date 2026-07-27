arr=[1,2,3,4]

p arr.tap {|n| p "before : #{n}"}
    .map {|n| n*4}
    .tap {|n| p "after : #{n}"}
p "========================================"

res= arr.tap {|n| p "before : #{n}"}
    .map {|n| n*4}
    .tap {|n| p "after : #{n}"}
p res

p "========================================"

result=5.then {|n| n+1}.then{|n| n*10}

p result
p "========================================"

result=5.tap {|n| n+1}.tap{|n| n*10}

p result
p "========================================"


res= [1,2,3,4].tap {|n| p "before : #{n}"}
    .map {|n| n*4}
    .tap {|n| p "after : #{n}"}
p res
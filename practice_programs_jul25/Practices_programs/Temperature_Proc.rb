temperature=Proc.new {|celsius| (celsius * 9/5)+32}

p temperature.call(5)
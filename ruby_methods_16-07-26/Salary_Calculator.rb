def salarytotal(basic,bonus)
    basic+bonus
end

basic=gets.chomp.to_i
bonus=gets.chomp.to_i

p salarytotal(basic,bonus)
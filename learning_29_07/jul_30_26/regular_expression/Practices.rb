pattern=/hello/



p "say hello there"=~pattern

p "============================================="


p " HELLO" =~ /hello/i

p "============================================="


if("hello" =~ /llo/)
    puts "Find"
end

p "============================================="

text="id 42"

match = text.match(/\d+/)

p match

p match[0]

p match.begin(0)

p match.end(0)

p "============================================="

text="id 42 345"
allnos=text.scan(/\d+/)
p allnos


p "============================================="

text="orde 4567"

match=text.match?(/\d+/)

p match

p "============================================="


text = "2026-07-14"

pattern = /(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})/

m = pattern.match(text)

puts m[:year]
puts m[:month]
puts m[:day]

puts "Email"

email="sowmiyat@gmail.com"

match=email.match?(/\w+@\w+\.\w+/)

p match

p "==========================================="

puts "Phone Number"

mobile="1234567899"

match=mobile.match?(/^\d{10}/)

p match


p "==========================================="

puts "PIN CODE"

pin_code="638459"

match=pin_code.match?(/^\d{6}$/)

p match
puts "Enter a ISBN-13(12 digit number)."

isbn_13 = gets.chomp

puts "#{isbn_13}"
a = isbn_13.to_s.chars.map(&:to_i)
puts "#{a}"
b = a.map.with_index{|value, index| index % 2 == 0 ? value : value * 3}
sum = 0
c = b.each_with_index{|value, index| sum += value}
puts "#{sum}"
d = sum % 10
e =  10 - d
puts "#{d}"
puts "#{e}"

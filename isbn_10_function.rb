print "Give me a 10 digit ISBN"
isbn10 = gets.chomp
isbn10 = isbn10.to_s.chars.map(&:to_i)
puts "#{isbn10}"
ans = 0
isbn10.each_with_index {| num, idx | ans += (idx + 1) * num }
puts "#{ans}"
c = ans % 11
puts "#{c}"
if c == 10
	c = "x"
end
puts "#{c}"
# b = isbn10.to_s.split(//).map{|isbn10| isbn10.to_i}
# puts "#{b}"
# c = b.first
# puts "#{c}"



print "Give me a 10 digit ISBN"
isbn10 = gets.chomp
isbn10 = isbn10.to_s.chars.map(&:to_i)
puts "#{isbn10}"
a = 12345.to_s.chars.map(&:to_i)
puts "#{a}"

# b = isbn10.to_s.split(//).map{|isbn10| isbn10.to_i}
# puts "#{b}"
# c = b.first
# puts "#{c}"



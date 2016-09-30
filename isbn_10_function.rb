print "Give me a 10 digit ISBN"
isbn10 = gets.chomp
b = isbn10.to_s.split(//).map{|isbn10| isbn10.to_i}
puts "#{b}"



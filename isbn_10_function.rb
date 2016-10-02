def isbn10(num)
	i_10 = {}
	num = num.gsub(/\W\s?/, "")
	i = i_10[:isbn] = num
	d = i_10[:digits] = num.to_s.chars.map(&:to_i)
	
	ans = 0
	
	i_10[:digits].each_with_index {| num, idx | ans += (idx + 1) * num }
	
	c = i_10[:checkdig] = ans % 11
		if i_10[:checkdig] == 10
			c = "x"
		end
	i_10
	return {:digits=>d, :isbn=>i, :checkdig=>c}
end







# print "Give me your 10 digit ISBN and I will check to see if its valid."
# isbn10 = gets.chomp
# isbn10 = isbn10.gsub(/\W\s?/, "")
# d = isbn10.to_s.chars.map(&:to_i)
# e = d.last
# puts "#{e}"
# d.pop
# puts "#{d}"
# puts "#{isbn10}"
# ans = 0
# d.each_with_index {| value, index | ans += (index + 1) * value }
# puts "#{ans}"
# c = ans % 11
# puts "#{c}"
# if c == 10
# 	c = "x"
# end
# puts "#{c}"
# puts "#{isbn10}#{c}"
# if c == e
# 	puts "valid"
# else
# 	puts "invalid"
# end
# b = isbn10.to_s.split(//).map{|isbn10| isbn10.to_i}
# puts "#{b}"
# c = b.first
# puts "#{c}"



def isbn10(num)
	i_10 = {}
	num = num.gsub(/\W\s?/, "") #removes all dashes and whitespace.
	i = i_10[:isbn] = num   # this sets a hash for isbn, still figuring out the hash keys but it required them and they make it work.
	d = i_10[:digits] = num.to_s.chars.map(&:to_i)  #changes the string to an array
	
	ans = 0	#setting a variable to 0 for the formula below.  Not sure if its required.  In C, if you didn't set a variable to 0, it would be a random number accessed from memory, so its a habit.
	
	i_10[:digits].each_with_index {| num, idx | ans += (idx + 1) * num }  #num = value, index = position in array.  (idx + 1) makes sure the formula starts with multiplying 1 and not 0. 
	
	c = i_10[:checkdig] = ans % 11 #this sets the hashtag for the check digit and solves for it
		if i_10[:checkdig] == 10   # if check digit = 10, set the value to "x"
			c = "x"
		end
	i_10
	return {:digits=>d, :isbn=>i, :checkdig=>c} #pass them along to isbnfunctiontest.rb.
end








# print "Give me your 10 digit ISBN and I will check to sete if its valid."
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



def isbnlength13(num)
	isbn_13_length = 0
	num = num.gsub(/\W\s?/, "") #removes all dashes and whitespace.
	isbn_13_length = num.to_s.chars.map(&:to_i)
	
	if isbn_13_length.length == 13
		true
	else
		false
	end
end

def isbn13(num)

	num = num.gsub(/\W\s?/, "")		#removes all dashes and whitespace, must be done at beginning.
	num = num.to_s.chars.map(&:to_i)
	
	checkdig = num.last

	num.pop
	
	sum = 0

	num.each_with_index do |val, idx|
		if idx % 2 == 1
			val * 3
		end
		sum = val += val
	end

	if sum == checkdig
		true
	end
end





# def isbn13(num)
# 	i_13 = {}
# 	num = num.gsub(/\W\s?/, "")					#removes all dashes and whitespace, must be done at beginning.
# 	i_13 = num 					#sets hashtag isbn13 to the value passed through the function
	
# 	i_13 = num.to_s.chars.map(&:to_i) 	#changes string into array
	
# 	ans = 0										#creating and setting variable to 0 for formula on following line.

# 	i_13.each_with_index{|val, idx| idx % 2 == 0 ? val : val * 3}   	#this formula multiplies every other element in the array.  The ? : statement means if index % 2 == 0, val stays val, else, val * 3
# 	sum = 0
# 	i_13.each_with_index{|val, idx| sum += val}   #this takes the result of the formula above, and add index position 0 with position 1, then the sum of that iwth position 2, etc to the end.
	
# 	i_13 = 10 - (sum % 10) 	#this takes the result above and does the final calculation required for the check digit.

# 	i_13

	
# end








# puts "Enter a ISBN-13(12 digit number)."

# isbn_13 = gets.chomp
# isbn_13 = isbn_13.gsub(/\W\s?/, "")

# puts "#{isbn_13}"
# a = isbn_13.to_s.chars.map(&:to_i)
# puts "#{a}"
# b = a.map.with_index{|value, index| index % 2 == 0 ? value : value * 3}
# sum = 0
# c = b.each_with_index{|value, index| sum += value}
# puts "#{sum}"
# d = sum % 10
# e =  10 - d
# puts "#{d}"
# puts "#{e}"

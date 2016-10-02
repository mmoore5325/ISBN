def isbn13(num)
	i_13 = {}
	num = num.gsub(/\W\s?/, "")
	i = i_13[:isbn_13] = num
	
	i_13[:digits] = num.to_s.chars.map(&:to_i)
	ans = 0

	i_13[:digits].each_with_index{|val, idx| idx % 2 == 0 ? val : val * 3}
	sum = 0
	i_13[:digits].each_with_index{|val, idx| sum += val}
	
	c = i_13[:checkdig] = 10 - (sum % 10)

	i_13

	return {:isbn_13=>i, :checkdig=>c}
end









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

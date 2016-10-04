def valid_isbn?(isbn)
	remove_spaces(isbn)
	remove_dashes(isbn)

	isbn.length == 10 ? true : false #same as if else statement
end

def remove_spaces(isbn)
	isbn.gsub!(" ", "")
end

def remove_dashes(isbn)
	isbn.gsub!("-", "")
end

def validate_isbn?(isbn)

	isbn = isbn.to_s.chars.map(&:to_i)
	checkdigit = isbn.last
	isbn.pop

	sum = 0
	isbn.each_with_index do |value, index|
		sum += (index + 1) * value
	end
	
	checkdigit2 = sum % 11
	checkdigit == checkdigit2 ? true : false

end

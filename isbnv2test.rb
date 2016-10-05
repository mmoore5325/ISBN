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

	isbn = isbn.to_s.chars.map(&:to_s)	#turns in

	checkdigit = isbn.last			#Creating a variable for the last element, the check digit, to test against at the end in order to validate the ISBN.
	if checkdigit == "x" || checkdigit == "X"	#if the check digit is x or X...
		checkdigit = 10							#...it turns into integer 10
	end
	isbn.pop	#removes the last element, which should be the checkdigit

	isbn = isbn.map(&:to_i)	#turns the isbn string array["1", "2", "3"] into an integer array[1, 2, 3]

	sum = 0
	isbn.each_with_index do |value, index|	
		sum += (index + 1) * value			#multiplies each number by the index + 1
	end
	
	checkdigit2 = sum % 11		# solves for the calculated check digit based off the first 9 numbers given
	checkdigit == checkdigit2 ? true : false	#if the original checkdigit above is equal to this calculated checkdigit, then it is true, else, false

end

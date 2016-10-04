def valid_isbn?(isbn)
	# isbn.gsub!(" ", "") # isbn.gsub!() is the same as isbn = isbn.gsub()
	# isbn.gsub!("-", "")
	isbn.delete!(" ")
	isbn.delete!("-")
	isbn.length == 10 ? true : false #same as if else statement
end

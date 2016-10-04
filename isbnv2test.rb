def valid_isbn?(isbn)
	isbn.gsub!(" ", "")
	isbn.length == 10 ? true : false #same as if else statement
end

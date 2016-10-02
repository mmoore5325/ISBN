require_relative "isbn_10_function.rb"
require_relative "isbn_13_function.rb"


print "Enter ISBN Number.\n"
isbn_10 = gets.chomp

isbn11 = isbn_10  					#named this variable to turn it into an array and check to make
isbn11.to_s.chars.map(&:to_i) 		#sure there are 9 elements, no more, no less, before it passes on to the function.
isbn11 = isbn11.gsub(/\W\s?/, "")	#this line removes all dashes and white spaces	
	if isbn11.length > 9
		print "Too many numbers\n"		#this if else statement checks to make sure there are exactly 9 numbers entered.
	elsif isbn11.length < 9
		print "Not enough numbers\n"
	else
		checkdig10 = isbn10(isbn_10)		#called the isbn10 function, and the following line prints out the results

		puts "Your check digit for your ISBN-10 book is #{checkdig10[:checkdig]}, with your final ISBN number being #{checkdig10[:isbn]}#{checkdig10[:checkdig]}."
end

print "Enter ISBN-13 number."
isbn_13 = gets.chomp
isbn14 = isbn_13
isbn14 = isbn14.gsub(/\W\s?/, "")
isbn14.to_s.chars.map(&:to_i)		#This code is the exact same as above, just slightly adjusted for 
	if isbn14.length > 12			#the isbn-13 file.
		print "Too many numbers.\n"
	elsif isbn14.length < 12
		print "Not enough numbers.\n"
	else
	checkdig13 = isbn13(isbn_13)
	puts "Your check digit for your ISBN-13 books is #{checkdig13[:checkdig]}, with your complete ISBN being #{checkdig13[:isbn_13]}#{checkdig13[:checkdig]}."
end
		

require_relative "isbn_10_function.rb"
require_relative "isbn_13_function.rb"


print "Enter ISBN Number.\n"
isbn_10 = gets.chomp
isbn11 = isbn_10  					#named this variable to turn it into an array and check to make
isbn11.to_s.chars.map(&:to_i) 		#sure there are 9 elements, no more, no less.
isbn11 = isbn11.gsub(/\W\s?/, "")	
	if isbn11.length > 9
		print "Too many numbers\n"
	elsif isbn11.length < 9
		print "Not enough numbers\n"
	else
		checkdig10 = isbn10(isbn_10)		
		puts "Your check digit for your ISBN-10 book is #{checkdig10[:checkdig]}, with your final ISBN number being #{checkdig10[:isbn]}#{checkdig10[:checkdig]}."
end

print "Enter ISBN-13 number."
isbn_13 = gets.chomp
isbn14 = isbn_13
isbn14 = isbn14.gsub(/\W\s?/, "")
isbn14.to_s.chars.map(&:to_i)		#just like above, checks to make sure no more than 12
	if isbn14.length > 12			#elements for the isbn-13.
		print "Too many numbers.\n"
	elsif isbn14.length < 12
		print "Not enough numbers.\n"
	else
	checkdig13 = isbn13(isbn_13)
	puts "Your check digit for your ISBN-13 books is #{checkdig13[:checkdig]}, with your complete ISBN being #{checkdig13[:isbn_13]}#{checkdig13[:checkdig]}."
end
		

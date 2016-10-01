require_relative "isbn_10_function.rb"


print "Enter ISBN Number.\n"
isbn_10 = gets.chomp
isbn11 = isbn_10
isbn11.to_s.chars.map(&:to_i)
	if isbn11.length > 9
		print "Too many numbers\n"
	elsif isbn11.length < 9
		print "Not enough numbers\n"
	else
		checkdig = isbn10(isbn_10)		
		puts "Your check digit is #{checkdig[:checkdig]}, with your final ISBN number being #{checkdig[:isbn]}#{checkdig[:checkdig]}."
end

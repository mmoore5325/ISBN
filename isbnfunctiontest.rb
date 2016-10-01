require_relative "isbn_10_function.rb"


print "Enter ISBN Number.\n"
isbn_10 = gets.chomp
checkdig = isbn10(isbn_10)
puts "Your check digit is #{checkdig[:checkdig]}, with your final ISBN number being #{checkdig[:isbn]}#{checkdig[:checkdig]}."

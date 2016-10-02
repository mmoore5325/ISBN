require 'sinatra'
require_relative 'isbn_13_function.rb'

get '/' do
	erb :isbnchoose
end

post '/isbnchoose' do
	isbn = params[:isbntype]

	if isbn == "ISBN-10"
		erb :isbn_10
	elsif isbn == "ISBN-13"
		erb :isbn_13
	end
end

get '/isbn_13' do

	erb :isbn_13
	isbn14 = isbn13
	isbn14.to_s.chars.map(&:to_i)		#This code is the exact same as above, just slightly adjusted for 
	
	if isbn14.length > 12			#the isbn-13 file.
		"Too many numbers.  Soon I will make a page that takes you back but not yet."
	else
		erb :isbn13cal
	end

end

post '/isbn_13' do

	isbn13x = params[:isbn_13]
	isbn13digit = isbn13(isbn13x)
	erb :isbn13cal, :locals => {:isbn_13 => isbn13x}

	isbn13digit = isbn13(isbn13x)
	"Your isbn is #{isbn13digit[:isbn_13]}#{isbn13digit[:checkdig]}, with your check digit being #{isbn13digit[:checkdig]}."

	# redirect '/isbn13cal?isbn_13=' + isbn13x
end

# get '/isbn13cal' do

# 	isbn13x = params[:isbn_13]

# 	erb :isbn13cal, :locals => {:isbn_13 => isbn13x}

# end
	# isbn13digit = isbn13(isbn13.to_s)
	# "Your isbn is #{isbn13[:isbn_13]}#{isbn13[:checkdig]}, with your check digit being #{isbn13[:checkdigit]}."
	# # erb :isbn13cal, :locals => {:isbn_13 => isbn13}

# end

# post '/isbn13cal' do
	
# 	isbn13x = params[:isbn_13]
# 	isbn13digit = isbn13(isbn13x)
# 	erb :isbn13cal, :locals => {:isbn_13 => isbn13x}

# 	isbn13digit = isbn13(isbn13x)
# 	"Your isbn is #{isbn13[:isbn_13]}#{isbn13[:checkdig]}, with your check digit being #{isbn13[:checkdigit]}."
# end





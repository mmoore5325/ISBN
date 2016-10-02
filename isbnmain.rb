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

end

post '/isbn_13' do

	isbn13 = params[:isbn_13]
	isbn14 = isbn13
	isbn14.to_s.chars.map(&:to_i)		#This code is the exact same as above, just slightly adjusted for 
	if isbn14.length > 12			#the isbn-13 file.
		"Too many numbers. Taking you back..."
		<meta http-equiv="refresh" content="3;/isbn_13" />
	end

	else
		erb :isbn13cal
	end


end





require 'sinatra'

get '/' do
	erb :isbnchoose
end

post '/isbntype' do
	isbn = params[:isbntype]

	if isbn == "ISBN-10"
		erb :isbn_10
	elsif isbn == "ISBN-13"
		erb :isbn_13
	end
end


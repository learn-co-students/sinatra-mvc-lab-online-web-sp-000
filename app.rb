require_relative 'config/environment'

class App < Sinatra::Base
	get "/" do
		erb :user_input
	end

	post "/piglatinize" do
		pigLatinizer = PigLatinizer.new
		@pigLatinized_phrase = pigLatinizer.piglatinize(params['user_phrase'])
		erb :results
	end


end
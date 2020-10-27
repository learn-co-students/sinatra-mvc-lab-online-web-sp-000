require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        string = params["user_phrase"]
        user_string = PigLatinizer.new
        @piglatinized_text = user_string.piglatinize(string)
        # @final_text = piglatinized_text.piglatinize(piglatinized_text)

        erb :pig_latin
    end

end
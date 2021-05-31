require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        new_phrase = PigLatinizer.new
        @piglatin = new_phrase.piglatinize(params[:user_phrase])

        erb :results
    end

end
require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @phrase = params[:user_phrase]
        pl = PigLatinizer.new
        @result = pl.piglatinize(@phrase)
        
        erb :piglatinizer
    end
end
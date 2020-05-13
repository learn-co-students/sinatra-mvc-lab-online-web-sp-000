require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        
        @pigLatin = PigLatinizer.new
        @phrase = @pigLatin.piglatinize(params[:user_input])

        erb :piglatinize
    end
end
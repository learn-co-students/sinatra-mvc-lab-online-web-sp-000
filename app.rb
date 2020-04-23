require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        @result = PigLatinizer.new
        @word = @result.piglatinize(params[:user_phrase])
        erb :result
    end
end
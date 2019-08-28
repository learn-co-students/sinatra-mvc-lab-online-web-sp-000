require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
       erb :user_input
    end

    post '/piglatinize' do
        hey = PigLatinizer.new
        @phrase = hey.piglatinize(params[:user_phrase])
        erb :results
    end
end
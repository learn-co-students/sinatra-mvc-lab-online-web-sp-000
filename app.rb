require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        
        erb :user_input
    end

    post '/piglatinize' do
        translator = PigLatinizer.new
        
        @translated_phrase = translator.piglatinize(params[:user_phrase])
       

        erb :result
    end
end
require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        #this time i didn't need to do a post '/' method
        @user_phrase = params[:user_phrase]
        @latinizer_instance = PigLatinizer.new
        
        erb :results 
    end
end
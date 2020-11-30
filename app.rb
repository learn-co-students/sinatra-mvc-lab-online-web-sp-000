require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end 

    post '/piglatinize' do
     
        x = PigLatinizer.new
        @user_input = x.pig_latin_split(params[:user_phrase])
    
        erb :piglatinizer
      end 
end
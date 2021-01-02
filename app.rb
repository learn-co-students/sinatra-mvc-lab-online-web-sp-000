require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end 

    post '/piglatinized' do 
       
        
        word = PigLatinizer.new
        @piglatinized = word.to_pig_latin(params[:user_input])

        erb :piglatinized
    end          
end 
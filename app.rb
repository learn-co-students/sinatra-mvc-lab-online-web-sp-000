require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get "/" do 
        erb :user_input
    end

    post "/piglatinize" do 
        @phrase = PigLatinizer.new.piglatinize(params[:user_phrase].to_s)
    erb :piglatinize
    end 

    # post "/piglatinize" do 
    #     # binding.pry
    #     new_pig = PigLatinizer.new
        
    #     @phrase = new_pig.piglatinize(params[:user_phrase].to_s)
    #     # binding.pry
    # erb :piglatinize
    # end 
end
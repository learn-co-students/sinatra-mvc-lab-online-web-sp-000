require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post '/piglatinize' do 
        my_pig_latinizer = PigLatinizer.new
        @phrase = my_pig_latinizer.piglatinize(params[:user_phrase])
        erb :results
    end
end
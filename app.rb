require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @pig_latin_phrase = PigLatinizer.new.piglatinize(params[:user_phrase].to_s)
        erb :piglatinize
    end

end
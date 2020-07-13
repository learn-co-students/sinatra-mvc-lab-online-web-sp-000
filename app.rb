require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_phrase
    end

    post "/piglatinize" do
        pig = PigLatinizer.new
        @piglatin_phrase = pig.piglatinize(params[:user_phrase])
        erb :results
    end
end
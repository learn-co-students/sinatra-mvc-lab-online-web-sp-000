require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do

        @piglatinize = PigLatinizer.new
        erb :output
    end
end
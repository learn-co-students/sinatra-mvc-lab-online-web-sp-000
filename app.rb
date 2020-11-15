require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @o = PigLatinizer.new
        @o.phrase = params[:user_phrase]
        @output = @o.piglatinize(@o.phrase)
        erb :output
    end

end
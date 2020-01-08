require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input.erb
    end

    post '/' do
        @processed_text = Piglatinizer.new(params[:user_input])

        erb :results
    end
    



end
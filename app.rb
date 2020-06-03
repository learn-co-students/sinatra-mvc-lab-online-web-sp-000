require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do  # reader
        erb :user_input
    end

    post '/piglatinize' do  #writer
        
        @piglatinizer = PigLatinizer.new
        @modified_text = @piglatinizer.piglatinize(params[:user_phrase])

        erb :results
    end
end
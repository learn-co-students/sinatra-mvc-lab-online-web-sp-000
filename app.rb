require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end 

    post '/piglatinize' do
        @phrase = params[:user_phrase]
        @pigged = PigLatinizer.new.piglatinize(@phrase)
        "#{@pigged}"

        #Evidently within a new view means taking out the erb?
    end 


end
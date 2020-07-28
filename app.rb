require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do
        new_pl = PigLatinizer.new
        new_pl.piglatinize(params[:user_phrase])
    end

end
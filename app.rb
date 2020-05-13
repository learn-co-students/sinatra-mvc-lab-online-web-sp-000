require_relative 'config/environment'



class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pl_obj = PigLatinizer.new
        @piglatin = pl_obj.piglatinize(params[:user_phrase])


        erb :pigged
    end
end
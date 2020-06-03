require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        params[:sentence]
        piglatinize(input)
        erb :something
    end
end
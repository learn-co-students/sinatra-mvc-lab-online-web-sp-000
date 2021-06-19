require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user_text = params[:user_phrase]
        @pig_latinzer = PigLatinizer.new()
        erb :result
    end

end
require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @text = params[:user_phrase]
        igpay_atinlay = PigLatinizer.new
        @rString = igpay_atinlay.piglatinize(@text)

        erb :piglatinize
    end

end
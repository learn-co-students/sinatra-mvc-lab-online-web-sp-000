require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

    get '/' do
       
    erb :user_input
    end

    post '/piglatinize' do
        a = PigLatinizer.new
        @pig = a.piglatinize(params[:user_phrase])
        erb :results
    end
end
require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pig_latin_input = PigLatinizer.new(params[:pig_latin_input])
        @pig_latin_input = @pig_latin_input.word_separator
        
        erb :user_response
    end
end
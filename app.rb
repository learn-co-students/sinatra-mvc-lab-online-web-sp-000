require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
    get '/' do
        erb :user_input 
    end

    #post '/piglatinize' do
    #    text_from_user = params[:user_text]
    #    @converted_text = PigLatinizer.new(text_from_user)
    #    erb :results
    #end
    post '/piglatinize' do
        pl = PigLatinizer.new
        @piglatin = pl.piglatinize(params[:user_phrase])
        erb :results
      end
end
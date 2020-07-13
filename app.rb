require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    piglatinizer = PigLatinizer.new
    @str = piglatinizer.piglatinize(params[:user_phrase])
    erb :pig_latin
  end
  
end
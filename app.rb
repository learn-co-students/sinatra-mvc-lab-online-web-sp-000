require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @orig_phrase = params[:user_phrase]
    @translator = PigLatinizer.new
    erb :translated
  end
end

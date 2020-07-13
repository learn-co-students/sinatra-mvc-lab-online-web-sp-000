require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_word = params[:user_phrase]
    @words = PigLatinizer.new
    @pig_latin = @words.piglatinize(user_word)

    erb :piglatinize
  end
end

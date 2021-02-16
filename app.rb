require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = params[:user_phrase]
    latinizer = PigLatinizer.new

    @text = latinizer.piglatinize(text)

    erb :piglatin
  end

end
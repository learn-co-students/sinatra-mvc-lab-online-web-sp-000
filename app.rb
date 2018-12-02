require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    phrase = PigLatinizer.new
    @piglatin = phrase.piglatinize(params[:user_phrase])
    
    erb :piglatin_result
  end
end

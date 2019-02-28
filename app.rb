require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    pigLatinizer = PigLatinizer.new(params[:user_text])
    @pigLatinizedText = pigLatinizer.pigLatinize
    erb :result
  end

end

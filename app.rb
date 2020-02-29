require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    user_input = params[:user_input]

    @pig_latin = PigLatinizer.new(user_input)

    erb :results
  end


end

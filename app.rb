require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    response = params[:user_phrase]
    @presponse = PigLatinizer.new(response)

    erb :results
  end
end

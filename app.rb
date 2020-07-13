require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    latinize = PigLatinizer.new()
    latinize.piglatinize(params[:user_phrase])
    #params[:user_phrase]
  end
end

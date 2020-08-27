require "pry"
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    @piglatinize = PigLatinizer.new
    @piglatinize_sentance = @piglatinize.piglatinize(@text)
    erb :piglatinize
  end

end

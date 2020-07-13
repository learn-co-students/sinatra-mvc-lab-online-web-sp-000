require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    @piglatinized = params[:user_phrase].split().collect{|word| PigLatinizer.new(word).transform}.join(" ")
    erb :piglatinize
  end
end
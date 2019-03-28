require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    params[:user_phrase].split.collect do |word|
    @piglatinized = PigLatinizer.new(params[:user_phrase])
    @piglatinized = @piglatinized.transform
    erb :piglatinize
  end
end
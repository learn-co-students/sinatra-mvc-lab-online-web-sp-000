require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  # post '/piglatinize' do
  #   @text = params[:user_phrase]
  #   binding.pry
  #   @piglatinizer = PigLatinizer.new
  #   erb :piglatinize
  # end
  post '/piglatinize' do
    @user_phrase = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end

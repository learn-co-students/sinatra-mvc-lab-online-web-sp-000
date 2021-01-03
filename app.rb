require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    x = PigLatinizer.new
      # create an instance of PigLatinizer, so we can call instance method on it
    @latinized_word = x.piglatinize(params[:user_phrase])
    
    erb :new_string
  end
  
  
end
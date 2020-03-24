require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    pig = PigLatinizer.new
        
    @piglatin = pig.piglatinize(params[:word])
 
    erb :results
  end  
end
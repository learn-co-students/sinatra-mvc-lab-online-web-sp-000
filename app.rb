require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
end

  post '/piglatinize' do 
    
    latinized = PigLatinizer.new
    #binding.pry
    @piglatinize = latinized.piglatinize(params[:user_phrase])
   # binding.pry
    
    erb :result
end

end 
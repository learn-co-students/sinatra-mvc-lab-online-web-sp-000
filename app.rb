require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
end

  post '/piglatinize' do 
    @piglatinized = PigLatinizer.new(params[:user_input])
    erb :user_input
end

end 
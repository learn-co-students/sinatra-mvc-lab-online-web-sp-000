require_relative 'config/environment'
require_relative './models/piglatinizer'
class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
    
  post '/piglatinize' do 
    my_piglatinizer = PigLatinizer.new
    @user_input_pigified = my_piglatinizer.piglatinize(params[:user_phrase])
    erb :user_output 
  end
  
end
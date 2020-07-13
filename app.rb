require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinze' do
    @piglatinizer = Piglatinizer.new(params[:user_phrase])
    
  en 

end
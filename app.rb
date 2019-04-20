require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @pig_latinized_text = PigLatinizer.new(params[:user_text])
    
    @pig_latinized_text.convert_pl
    
     
    end
  
end
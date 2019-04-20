require_relative 'config/environment'
require_relative 'models/piglatinizer'


class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    # @pig_latinized_text = PigLatinizer.new(params[:user_text])
    
    # @pig_latinized_text.convert_pl
    text = PigLatinizer.new
    
    @pig_latinized_text = text.convert_pl(params[:user_phrase])
    
     
    end
  
end
require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    text = PigLatinizer.new
    @pig_latinized_word = text.piglatinize(params[:user_phrase])
    
    erb :pig_latin
  end
end
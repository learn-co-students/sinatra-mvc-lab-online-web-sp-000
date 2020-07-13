require_relative 'config/environment'


class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/' do 
    @word = params["user_input"]
    @pig_latin_word = PigLatinizer.new(@word)
    erb :pig_latin  
  end
  
  get '/pig_latin' do 
    erb :pig_latin
  end
  
end
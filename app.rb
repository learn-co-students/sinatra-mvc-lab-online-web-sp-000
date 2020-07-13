require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get "/" do
    erb :user_input
  end
  
  post "/piglatinize" do
    user_phrase = params[:user_phrase]
    newclass = PigLatinizer.new
    @result = newclass.piglatinize(user_phrase)
    erb :new_view
  end
  
end
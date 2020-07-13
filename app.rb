require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do 
    # binding.pry
    @user_input = PigLatinizer.new
    @pig_latin_phrase = @user_input.piglatinize(params[:user_phrase])

    erb :pig_latin

  end

end
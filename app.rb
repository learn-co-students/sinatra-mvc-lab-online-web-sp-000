require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # org_string = params[:input]
    @pig_latin = PigLatinizer.new
    @user_input = params[:user_phrase]

    erb :pig_latinize
  end

end

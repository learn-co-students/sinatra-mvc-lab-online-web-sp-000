require_relative 'config/environment'
require_relative 'models/pig_latinizer'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new(params[:user_phrase])


    erb :pig_latin
  end
end

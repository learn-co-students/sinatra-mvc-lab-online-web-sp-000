require_relative 'config/environment'
require_relative 'models/pig_latinizer'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    instance = PigLatinizer.new
    @pig_latin = instance.piglatinize(params[:user_phrase])


    erb :pig_latin
  end
end

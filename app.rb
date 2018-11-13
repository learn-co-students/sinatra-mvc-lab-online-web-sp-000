require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new
    @final_text = @pig_latin.piglatinize(params[:user_phrase])
  end

end

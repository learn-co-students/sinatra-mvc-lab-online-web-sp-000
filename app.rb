require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @new_text = PigLatinizer.new
    @new_text.piglatinize(params[:user_phrase])
  end
end

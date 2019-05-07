require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @input_text = params[:user_phrase]
    p = PigLatinizer.new
    puts @input_text
    @pig_latin = p.piglatinize(@input_text)

    erb :results
  end
end
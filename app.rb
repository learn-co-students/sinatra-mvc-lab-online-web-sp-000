require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @input_text = params[:user_phrase]
    @pig_latinized_text = PigLatinizer.new.piglatinize(@input_text)
    erb :output
  end

  post '/piglatinize' do
    @input_text = params[:user_phrase]
    @pig_latinized_text = PigLatinizer.new.piglatinize(@input_text)
    erb :output
  end
end

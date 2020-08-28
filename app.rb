require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    sentence = params[:user_phrase]
    word = PigLatinizer.new
    @pig_latinized_word = word.to_pig_latin(sentence)
    puts sentence
    erb :pig_latin
  end
end

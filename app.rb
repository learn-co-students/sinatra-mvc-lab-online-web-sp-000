require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @input_text = params[:input_text]
    @pig_latinized_text = PigLatinizer.new.piglatinize(@input_text)
    erb :output
  end
end

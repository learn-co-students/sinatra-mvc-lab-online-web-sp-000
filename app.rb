require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post "/piglatinize" do
    @phrase = PigLatinizer.new
    "#{@phrase.piglatinize(params[:user_phrase])}"
  end
end

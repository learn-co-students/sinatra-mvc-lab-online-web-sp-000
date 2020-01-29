require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @pig_text = PigLatinizer.new(params[:user_input])
    erb :piglatinize
  end
end

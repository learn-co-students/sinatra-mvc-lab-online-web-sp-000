require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @text_pig_latinized = PigLatinizer.new.piglatinize(params[:user_phrase])

    "#{@text_pig_latinized}"
  end
  
end

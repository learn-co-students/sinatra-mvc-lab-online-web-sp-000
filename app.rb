require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    @text = PigLatinizer.new
    @latinized_text = @text.piglatinize(params[:user_phrase])

    erb :piglatinize
  end
end

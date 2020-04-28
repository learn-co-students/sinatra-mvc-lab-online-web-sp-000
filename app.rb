require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @text = PigLatinizer.new
        @text_change = @text.piglatinize(params[:user_phrase])
        erb :piglatinize
      end

end
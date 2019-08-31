require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
      erb :user_input
    end

    post '/piglatinize' do
      pigL = PigLatinizer.new
      phrase = params[:user_phrase]
      @pigLat = pigL.piglatinize(phrase)
      erb :result
    end

      # get '/' do
      #   erb :user_input
      # end
      #
      # post '/piglatinize' do
      #   pl = PigLatinizer.new
      #   @piglatin = pl.piglatinize(params[:user_phrase])
      #   erb :results
      # end
end

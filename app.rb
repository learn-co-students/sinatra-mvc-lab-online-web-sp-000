require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
      end
    
      post '/piglatinize' do
        @piglatinize_text = PigLatinizer.new
        @result = @piglatinize_text.piglatinize(params[:user_phrase])
        #@piglatinize_text = PigLatinizer.new(params[:user_phrase])
    
        erb :piglatinize
      end    
end
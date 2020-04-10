require 'pry'
require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/' do
    # binding.pry
    input_from_user = params[:input]
    @pl = PigLatinizer.new(input_from_user)
    # @words = PigLatinizer.new(params[:input])

    erb :results
  end


  # get '/results' do
  #   "Hello"
  # end


end

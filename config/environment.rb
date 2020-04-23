ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require './models/piglatinizer.rb'

# require_all './models'
# Dir[File.join(__dir__, './models ', '*.rb')].each { |file| require file }
# Dir.glob(File.join(‘./models’, '**', '*.rb'), &method(:require))
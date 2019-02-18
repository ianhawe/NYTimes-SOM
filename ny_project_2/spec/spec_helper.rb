require 'httparty'
require 'dotenv'
require_relative '../lib/ny_times_api.rb'
Dotenv.load('.env')

RSpec.configure do |configure|
  configure.formatter = :documentation
end

# Set databease to test
ENV["APP_ENV"] = "test"

# load website
require_relative "../app"

# Set-up RSpec
require "rack/test"
require "rspec"
def app
  Sinatra::Application
end
RSpec.configure do |config|
  config.include Rack::Test::Methods
end

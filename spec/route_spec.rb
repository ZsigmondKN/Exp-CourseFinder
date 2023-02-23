require "rspec"
require "rack/test"

require_relative "../app"

RSpec.describe "Test Sinatra index page" do
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    describe "GET /" do
        it "has a status code of 200 (OK)" do
          get "/"
          expect(last_response).to be_ok
        end
    
        it "contains, Welcome to ... Page" do
          get "/"
          expect(last_response.body).to include("Welcome to")
        end
    end
end
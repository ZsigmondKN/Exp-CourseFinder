require "rspec"
require "rack/test"

require_relative "../app"

RSpec.describe "Test Sinatra index page" do
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    # describe "GET /" do
    #     it "has a status code of 200 (OK)" do
    #         get "/"
    #         expect(last_response.status).to eq(200)
    #     end

    #     it "contains, Welcome to ... Page" do
    #         get "/index"
    #         expect(last_response.body).to include("Welcome to")
    #     end
    # end

    describe "GET /first-route" do
        it "has a status code of 200 (OK)" do
          get "/first-route"
          expect(last_response).to be_ok
        end
    
        it "outputs the correct message for first-route" do
          get "/first-route"
          expect(last_response.body).to eq("This code is run when first-route is invoked")
        end
      end
end
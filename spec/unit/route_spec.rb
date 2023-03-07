require_relative "../spec_helper"

RSpec.describe "Test Sinatra index page" do
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
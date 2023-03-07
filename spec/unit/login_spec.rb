require_relative "../spec_helper"

RSpec.describe "Login" do
    describe "input recieved" do
        it "writes the content of input on page" do
        post "/user-home-page", "email_field" => "test@gmail.com", "password_field" => "123pass"
        expect(last_response.body).to include("test@gmail.com")
        end
    end
end
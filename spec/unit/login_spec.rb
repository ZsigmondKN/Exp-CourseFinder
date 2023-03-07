require_relative "../spec_helper"

RSpec.describe "Login" do
    describe "Login submission" do
        it "says you are logged in if correct email and pasword are inputted" do
            get "/login", "email_field" => "test@gmail.com", "password_field" => "123pass"
            expect(last_response.body).to include("You are now logged in")
        end

        it "provides error when email field is not filled in" do
            get "/login", "password_field" => "123pass"
            expect(last_response.body).to include("Please enter a valid email address")
        end

        it "provides error when password field is not filled in" do
            get "/login", "email_field" => "test@gmail.com"
            expect(last_response.body).to include("Please enter a valid password")
        end
    end
end
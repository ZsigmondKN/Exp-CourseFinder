require_relative "../spec_helper"

RSpec.describe "User list" do
    describe "GET /user-list" do
        context "if given an enpty table" do
            it "outputs that the database is empty" do
                #empty table
                DB.from("user_details").delete
                get "/user-list"
                expect(last_response.body).to include ("database is empty")
            end
        end

        context "see if correct records are displayed" do
            it "lists all the users" do
                # create new user
                user = UserDetail.new(email: "test@gmail.com", password: "passy1234")
                user.save_changes
                
                get "/user-list"
                expect(last_response.body).to include("test@gmail.com")

                #reset table
                DB.from("user_details").delete
            end
        end
    end
end



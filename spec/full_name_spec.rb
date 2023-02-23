require "rspec"
require "../models/join_name.rb"

RSpec.describe do
    describe "#full_name" do
        context "when given first and last name,'Ben' 'White'" do
            it "returns Ben White" do
                expect(joint_name("Ben","White")).to eq("Ben White")
            end
        end

        #Add 0 value tests
    end
end
    
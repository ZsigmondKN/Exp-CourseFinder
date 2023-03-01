
require "rspec"
require "sequel"
require_relative "../../models/staff"

# Set-up database and log location
db_path = File.dirname(__FILE__)
db = "#{db_path}/../../db/account.sqlite3"
DB = Sequel.sqlite(db)

RSpec.describe StaffDetail do
    describe "#print_given_name" do
        it "retuns the employee's full name" do
            staff = described_class.new(first_name: "Sam", surname: "Smith")
            expect(staff.print_given_name).to eq("Sam Smith")
        end
    end

    # #if I wanted to give the 
    # #availability of setting age as a staff
    # describe "#print_employee_age" do
    #     it "returns the age of the employee" do
    #         staff = described_class.new(date_of_birth: "2002-1-1")
    #         expected(staff.age("2023-1-1").to eq(21))
    #     end
    # end
end

            
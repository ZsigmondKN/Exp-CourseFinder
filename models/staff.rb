require "logger"
require "sequel"
require "time_difference"

# Set-up database and log location
db_path = File.dirname(__FILE__)
db = "#{db_path}/../db/account.sqlite3"
log = "#{db_path}/../log/db.log"
DB = Sequel.sqlite(db, logger: Logger.new(log))

#Inherit functionality from Sequel::Model
class StaffDetail < Sequel::Model

    def print_given_name
        "#{first_name} #{surname}"
    end

    #  #if I wanted to give the 
    # #availability of setting age as a user
    # def print_persons_age(at_date = Date.today)
    #     dob = Date.striptime(date_of_birth, "%Y-%m-%d")
    #     TimeDifference.between(dob, at_date).in_years.floor
    # end

    def print_every_staff_full_name
        staff = StaffDetail.all
        staff.each do |user|
            puts "#{user.first_name} #{user.surname}"
        end
    end
end
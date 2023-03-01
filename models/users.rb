require "logger"
require "sequel"
require "time_difference"

# Set-up database and log location
db_path = File.dirname(__FILE__)
db = "#{db_path}/../db/users.sqlite3"
log = "#{db_path}/../log/db.log"
DB = Sequel.sqlite(db, logger: Logger.new(log))

#Inherit functionality from Sequel::Model
class UserDetail < Sequel::Model

    def print_given_name
        "#{first_name} #{surname}"
    end

    def print_persons_age(at_date = Date.today)
        dob = Date.striptime(date_of_birth, "%Y-%m-%d")
        TimeDifference.between(dob, at_date).in_years.floor
    end

    def print_every_users_full_name
    users = UserDetail.all
    users.each do |user|
        puts "#{user.first_name} #{user.surname}"
    end
end
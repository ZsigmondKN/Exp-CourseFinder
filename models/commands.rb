require "logger"
require "sequel"
require_relative "staff"

# Set-up database and log location
db_path = File.dirname(__FILE__)
db = "#{db_path}/../db/account.sqlite3"
log = "#{db_path}/../log/db.log"
DB = Sequel.sqlite(db, logger: Logger.new(log))

# Create a new player instance
staff = StaffDetail.new
staff.first_name = "Richard"
staff.surname = "Samson"
staff.email = "aaa@gmail.com"
staff.password = "pass123"
staff.role = "admin"

# Save to the database
staff.save_changes

# Update his club and save again
staff.email = "propper.email@gmail.com"
staff.save_changes

# Now delete
staff.delete


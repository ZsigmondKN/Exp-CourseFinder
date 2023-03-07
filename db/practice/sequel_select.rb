require "logger"
require "sequel"

# Set-up database and log location
db_path = File.dirname(__FILE__)
db = "#{db_path}/users.sqlite3"
log = "#{db_path}/../log/db.log"
DB = Sequel.sqlite(db, logger: Logger.new(log))

puts "Please enter an role:"
supplied_account = gets.chomp

dataset = DB[:staff_details].where(role: supplied_account)
num_rows = dataset.count

if num_rows.zero?
    puts "Sorry there are no accounts with this role."
else
    dataset.each do |record|
        puts "* #{record[:first_name]} #{record[:surname]}"
    end
end

puts
puts

dataset.each do |record|
    puts record
end

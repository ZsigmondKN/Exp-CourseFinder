require "logger"
require "sequel"

# mode used
type = ENV.fetch("APP_ENV", "production")

# Set-up database and log location
db_path = File.dirname(__FILE__)
db = "#{db_path}/#{type}.sqlite3"
log_path = "#{File.dirname(__FILE__)}/../log/"
log = "#{log_path}/#{type}.log"
DB = Sequel.sqlite(db, logger: Logger.new(log))

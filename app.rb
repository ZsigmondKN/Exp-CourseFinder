require "sinatra"
require "sinatra/reloader"
require "require_all"

include ERB::Util

require_rel "db/db", "models", "controllers"

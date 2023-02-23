require "sinatra"
require "sinatra/reloader"

get "/times-table" do
    @first_name = "Jhon"
    @last_name = "Smith"
    erb :index
end

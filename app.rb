require "sinatra"
require "sinatra/reloader"

get "/" do
    @first_name = "Jhon"
    @last_name = "Smith"
    @title = "Home Page"
    erb :index
end

# get "/" do
#     "This code is run when first-route is invoked"
# end

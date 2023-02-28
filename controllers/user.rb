get "/" do
    @first_name = "Jhon"
    @last_name = "Smith"
    @title = "Home Page"
    erb :index
end

get "/login" do
    @title = "Login Page"
    erb :login
end

get "/user/profile" do
    @title = "Login Page"
    erb :login
end
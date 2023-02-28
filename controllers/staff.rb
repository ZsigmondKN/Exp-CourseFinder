get "/staff/dashboard" do
    @first_name = "Jhon"
    @last_name = "Smith"
    @title = "Home Page"
    erb :index
end

get "/staff/profile" do
    @title = "Login Page"
    erb :login
end
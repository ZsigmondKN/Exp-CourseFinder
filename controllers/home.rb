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

post "/user-home-page" do
    @title = "Welcome Back *USERNAME*"
    @provided_email = params["email_field"]
    @provided_password = params["password_field"]
    erb :user_home_page
end

get "/signup" do
    @title = "Sign-Up Page"
    erb :signup
end
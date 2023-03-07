get "/" do
    @first_name = "Jhon"
    @last_name = "Smith"
    @title = "Home Page"
    erb :index
end

get "/login" do
    @title = "Login Page"
    @provided_email = params["email_field"]
    @provided_password = params["password_field"]

    @submitted_form = !@provided_email.nil? || !@provided_password.nil?

    if @submitted_form
        if !@provided_email.nil?
            @provided_email.strip!
        else
            @provided_email = ""
        end
        if !@provided_password.nil?
            @provided_password.strip!
        else
            @provided_password = ""
        end

        @email_field_error = "Please enter a valid email address" if @provided_email.empty?
        @password_field_error = "Please enter a valid password" if @provided_password.empty?
        @submission_error = "Please fill in the fields as required bellow" unless @email_field_error.nil? && @password_field_error.nil?
    end
    
    erb :login
end

get "/signup" do
    @title = "Sign-Up Page"
    erb :signup
end

post "/user-home-page" do
    @title = "Welcome Back *USERNAME*"
    @provided_email = params["email_field"]
    @provided_password = params["password_field"]
    erb :user_home_page
end
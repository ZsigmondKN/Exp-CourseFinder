require "logger"
require "sequel"
require_relative "staff"
require_relative "users"

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

# def sub
#     user_del = UserDetail["DELETE * FROM albums"]
#     user_del.delete
# end

def addUser
    user = UserDetail.new(email: "test@gmail.com", password: "passy12345")
    user.save_changes
end


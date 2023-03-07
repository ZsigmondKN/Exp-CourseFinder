require "logger"
require "sequel"
require "time_difference"

#Inherit functionality from Sequel::Model
class UserDetail < Sequel::Model

    # def print_given_name
    #     "TTTTTTTTTTTTTTT"
    # end

    # #if I wanted to give the 
    # #availability of setting age as a user
    # def print_persons_age(at_date = Date.today)
    #     dob = Date.striptime(date_of_birth, "%Y-%m-%d")
    #     TimeDifference.between(dob, at_date).in_years.floor
    # end

    # def print_every_users_full_name
    #     users = UserDetail.all
    #     users.each do |user|
    #         puts "#{user.first_name} #{user.surname}"
    #     end
    # end
end
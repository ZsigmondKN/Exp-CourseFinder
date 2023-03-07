require "logger"
require "sequel"
require "time_difference"

#Inherit functionality from Sequel::Model
class StaffDetail < Sequel::Model

    def print_given_name
        "#{first_name} #{surname}"
    end

    #  #if I wanted to give the 
    # #availability of setting age as a staff
    # def print_persons_age(at_date = Date.today)
    #     dob = Date.striptime(date_of_birth, "%Y-%m-%d")
    #     TimeDifference.between(dob, at_date).in_years.floor
    # end

    # def print_every_staff_full_name
    #     staff = StaffDetail.all
    #     staff.each do |employee|
    #         puts "#{employee.first_name} #{employee.surname}"
    #     end
    # end
end
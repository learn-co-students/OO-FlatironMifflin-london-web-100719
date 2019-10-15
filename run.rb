require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("John", "Sports", 35)
m2 = Manager.new("George", "Sports", 37)
m3 = Manager.new("Jane", "Sports", 15)
m4 = Manager.new("Henry", "Sports", 20)
m5 = Manager.new("Albert", "Sports", 23)
m6 = Manager.new("Ben", "Engineering", 65)
m7 = Manager.new("Jessica", "Engineering", 66)
m8 = Manager.new("Abby", "Engineering", 24)
m9 = Manager.new("Tammy", "Engineering", 32)

e1 = Employee.new("Z", 3555, m1)
e2 = Employee.new("Y", 4995, m2)
e3 = Employee.new("X", 10432, m2)
e4 = Employee.new("W", 99, m2)
e5 = Employee.new("V", 65002, m3)
e6 = Employee.new("U", 2000, m5)
e7 = Employee.new("t", 2500, m6)

binding.pry
puts "done"

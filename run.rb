require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("Jim", "HR", 34)
m2 = Manager.new("Steve", "Finance", 32)
m3 = Manager.new("Boris", "Politics", 45)

e1 = Employee.new("Ed", 23000, m1)
e2 = Employee.new("John", 23000, m2)
e3 = Employee.new("Andy", 34000, m3)
e4 = Employee.new("Matt", 33000, m1)
e5 = Employee.new("Bob", 43000, m2)
e6 = Employee.new("Nick", 42000, m1)


binding.pry
puts "done"

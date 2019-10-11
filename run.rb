require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("Steve", "Physics", 45)
m2 = Manager.new("Alex", "Economics", 50)
m1 = Manager.new("Nathan", "Sciene", 34)

e1 = Employee.new("Bogo", 20000, m2)
e2 = Employee.new("Rob", 25000, m2)
e3 = Employee.new("Gareth", 26000, m1)
e4 = Employee.new("Tom", 22000, m1)
e5 = Employee.new("Norbit", 26000, m1)




binding.pry
puts "done"

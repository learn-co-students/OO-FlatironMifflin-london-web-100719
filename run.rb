require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


me = Manager.new("c", "Cyber", 29)
ryan = Manager.new("Ryan", "Data", 25)
jonny = Manager.new("Ryan", "Tech Risk", 25)

ian = Employee.new("ian", 55000, ryan)
pets = Employee.new("pets", 54000, ryan)
gaine = Employee.new("gaines", 60000, jonny)
rash = Employee.new("rash", 56000, me)

#Test your code here


binding.pry
puts "done"

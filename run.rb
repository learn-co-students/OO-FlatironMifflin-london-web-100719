require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


manager1 = Manager.new("Debbie", "IT", 45)
manager2 = Manager.new("Daniel", "Digital", 40)

employee1 = Employee.new("Cassie", 40000, manager2)
employee2 = Employee.new("Jon", 50000, manager2)
employee3 = Employee.new("Jade", 50000, manager1)
employee4 = Employee.new("Heather", 51000, manager1)

binding.pry
puts "done"

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("bob", "Accounting", 45)
manager2 = Manager.new("Patrick", "HR", 70)
manager3 = Manager.new("Steph", "HR", 12)

employee1 = Employee.new("Stephdsfds", 1500, manager1)
employee2 = Employee.new("Stesdfph", 1200, manager2)
employee3 = Employee.new("BRHFF", 26000, manager3)
employee4 = Employee.new("jkahs", 26, manager3)
employee5 = Employee.new("amnsd", 3400, manager2)

binding.pry
puts "done"

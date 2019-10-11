require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'



man1 = Manager.new("Niki")
man2 = Manager.new("Toby", "HR", 41)
man3 = Manager.new("Creed", "Lurker", 75)

hire1 = man1.hire_employee("Jim", 10000)
emp2 = Employee.new("Ivan", 70000, man3)
emp3 = Employee.new("Jonah", 50000, man2)
emp4 = Employee.new("Sven", 69500, man2)

binding.pry
puts "done"

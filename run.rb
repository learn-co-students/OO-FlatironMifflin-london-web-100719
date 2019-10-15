# frozen_string_literal: true

require_relative 'lib/Manager'
require_relative 'lib/Employee'
require 'pry'

# Test your code here
manager1 = Manager.new("Peter", "IT", 25)
manager3 = Manager.new("Akim", "IT TEC", 20)
manager4 = Manager.new("Kamel", "DOS", 33)
manager5 = Manager.new("Hakil", "POS", 45)

emp1 = Employee.new("Ola", 23500, manager1)
emp2 = Employee.new("Bimbo", 45500, manager3)
emp3 = Employee.new("Gift", 5500, manager5)
emp4 = Employee.new("Carol", 2500, manager1)
emp5 = Employee.new("Akeem", 82500, manager4)


binding.pry
puts 'done'

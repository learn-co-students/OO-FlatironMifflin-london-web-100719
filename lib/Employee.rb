require 'pry'

class Employee
  attr_accessor :name, :salary, :manager_name
  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(salary)
    self.all.select { |employee| employee.salary > salary }
  end

  def self.find_by_department(department)
    # Returns the first employee whose manager is working in that department. The tricky thing is we only have managers name. So we need to grab the Manager object and read their @department variable,and find 
    Manager.all.find { |manager| manager.department == department }.employees[0]
  end

  def tax_bracket
    #all other employees within 1000 of salary
    Employee.all.select { |employee| employee.salary < @salary + 1000}.select { |employee| employee.salary > @salary - 1000 } - [self]
  end
end

# employee1 = Employee.new("Gordy", 5000, "Clement DuPerre")
# employee2 = Employee.new("Peter", 5500, "Clement DuPerre")
# employee3 = Employee.new("Alex", 4500, "Sergei")

# binding.pry
# 0
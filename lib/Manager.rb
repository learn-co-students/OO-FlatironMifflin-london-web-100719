require 'pry'

class Manager
  attr_accessor :name, :age, :department, :employees
  @@all = []

  def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @employees = []
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(name, salary)
    new_employee = Employee.new(name, salary, @name)
    @employees << new_employee
  end

  def self.all_departments
    self.all.map(&:department)
  end

  def self.average_age
    # It's unneccessary to split these operations up, but I think it's more legible.
    ages = self.all.map(&:age)
    ages = (ages.sum / ages.count).to_f
  end
end

manager1 = Manager.new("Clement DuPerre", 55, "Antiques")
manager2 = Manager.new("Rick Anglestrom", 42, "Modern Art")
manager3 = Manager.new("Sergei", 35, "R&D")
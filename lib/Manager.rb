# frozen_string_literal: true

class Manager
  attr_reader :name, :department, :age
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def emoloyees
    Employee.all.select { |e| e.manager == self }
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end

  def self.all_departments
    all.map(&:department)
  end

  def self.average_age
    total_age = all.map(&:age).reduce(0) { |sum, age| sum += age }
    numbers = all.map(&:age).count
    average = total_age / numbers
  end
end

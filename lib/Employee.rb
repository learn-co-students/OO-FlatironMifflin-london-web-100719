# frozen_string_literal: true

class Employee
  attr_reader :name, :salary, :manager_name
  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(amount)
    all.select { |employee| employee.salary > amount }
  end

  def self.find_by_department(department_name)
    department_manager = Manager.all.select { |manager| manager.department == department_name }
    Employee.all.find { |employee| employee.manager == department_manager }
  end

  def tax_bracket
    Employee.all.select do |employee|
      (employee.salary - self.salary).abs < 1000
    end
  end
end

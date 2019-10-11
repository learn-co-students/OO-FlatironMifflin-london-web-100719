require 'pry'

class Manager

    attr_reader :name, :department, :age
    attr_accessor :employees

    @@all = []

    def self.all

        @@all
        
    end

    def initialize(name, department = "Overlord of all things in creation", age = 12)

        @name = name
        @department = department
        @age = age
        @employees = []
        Manager.all << self
        
    end

    def hire_employee(employee_name, salary)

        Employee.new(employee_name, salary, self)
        
        
    end

    def self.all_departments

        Manager.all.map {|e| e.department}
        
    end

    def self.average_age

        average_age = 0

        Manager.all.map {|e| average_age += e.age}
        average_age /= Manager.all.size.to_f
        average_age.round(2)
        
    end

end

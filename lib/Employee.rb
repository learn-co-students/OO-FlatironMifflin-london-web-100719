require 'pry'

class Employee

    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []

    def initialize(name, salary, manager = Manager.all[0])

        @name = name
        @salary = salary
        @manager = manager
        manager.employees << self
        Employee.all << self
        
    end

    def self.all

        @@all
        
    end

    def manager_name

        @manager.name
        
    end

    def self.paid_over(amount)

        Employee.all.select {|monkey| monkey.salary > amount}
        
    end

    def self.find_by_department(department)

        var1 = Employee.all.select {|monkey| monkey.manager.department == department}[0]
        
    end

    def tax_bracket

        Employee.all.select {|employee| employee.salary.between?(@salary - 1000, @salary + 1000)}.reject {|monkey| monkey == self}
        
    end

end

class Employee
    attr_accessor :name, :salary, :anager, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name 
        @salary = salary
        @manager = manager
        Manager.employee << self
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def manager_name
        @manager.name
    end

    def self.paid_over(salary)
        Employee.all.select {|employee| employee.salary > salary.to_f}
    end 

    def self.find_by_department(department_name)
        Employee.all.select {|element| element.manager.department == department_name}.uniq
    end 

    def self.tax_bracket(employee_ask)
        Employee.all.select {|employee| employee.salary.between?(@salary - 1000, @salary + 1000)}
    end 

end

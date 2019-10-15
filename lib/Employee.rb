class Employee
    attr_accessor :manager_name, :department, :name
    attr_reader :salary

    def initialize(name, department, manager_name, salary)
        @name = name 
        @department = department
        @salary = salary
        @manager_name = manager_name
        @@all << self 
    end 

    @@all = []

    def self.all 
        @@all 
    end 

    def self.paid_over(fixnum)
        self.all.select {|employee| employee.salary > fixnum}
    end 

    def self.find_by_department(department_arg)
        self.all.find {|employee| employee.department == department_arg}
    end 

    def tax_bracket
        array = []
        max = self.salary + 1000
        min = self.salary - 1000
        Employee.all.each do |e|
            if e.salary > max || e.salary < min 
            else 
                array << e 
            end 
        end 
        array
    end 
end

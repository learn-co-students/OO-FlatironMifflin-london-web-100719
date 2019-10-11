class Employee

    attr_accessor :name, :salary, :manager_name
    attr_reader

    @@all = [ ]

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        Employee.all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(paid_over)
        #takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
        Employee.all.select { |e| e.salary > paid_over}
    end

    def self.find_by_department(department_name)
        #takes a String argument that is the name of a department and 
        #returns the first employee whose manager is working in that department
        Manager.all.select { |m| m.department == department_name}[0].employees.first
    end

    def tax_bracket
        #returns an Array of all the employees whose salaries are within $1000 (± 1000)
        # of the employee who invoked the method
        Employee.all.select { |e| e.salary.between?(@salary - 1000, @salary +1000)}
    end

     


end

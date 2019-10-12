class Employee

    attr_accessor  :salary, :manager
    attr_reader

    @@all=  []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        Employee.all << self
    end

    def self.all
        @@all
    end
    
    def self.paid_over(num)
        Employee.all.select {|employee| employee.salary > num}
    end

    def self.find_by_department(department)
        manager_of_dep = Manager.all.find {|manager| manager.department == department}
        Employee.all.find {|employee| employee.manager == manager_of_dep}
    end

    def tax_bracket
        #return all other instances with salaries in a range of 1000 of current
        minus_1000_plus = Employee.paid_over(@salary - 1001)
        minus_1000_plus.select {|employee| employee.salary <= @salary + 1000}
    end
    
end

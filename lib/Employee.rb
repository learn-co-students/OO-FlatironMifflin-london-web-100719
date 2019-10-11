class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @manager.employees << self
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(salary_threshold)
        self.all.select{|employee| employee.salary > salary_threshold }
    end 

    def self.find_by_department(department_name)
        department_manager = Manager.all.find{|manager| manager.department == department_name}
        Employee.all.find{|employee| employee.manager == department_manager }
    end

    def tax_bracket
        Employee.all.select do |employee|
            (employee.salary - self.salary).abs < 1000
        end
    end

end

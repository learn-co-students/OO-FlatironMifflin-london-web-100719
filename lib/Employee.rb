class Employee
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.paid_over(threshold)
        self.all.select {|employee| employee.salary > threshold}
    end

    def self.find_by_department(dpt_name)
        self.all.find {|employee| employee.manager.department == dpt_name}
    end

    def tax_bracket
        @@all.select {|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000)}
    end

end

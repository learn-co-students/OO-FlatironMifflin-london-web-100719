class Employee

    attr_reader :name, :manager_name, :salary

    @@all = []

    def initialize(name, salary, manager_name) # belongs to
        @name = name
        @manager_name = manager_name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select {|employee| employee.salary > amount}
    end

    def self.find_by_department(department)
        self.all.find {|employee| employee.manager_name.department == department}
    end

    def tax_bracket
        reference_salary = self.salary
        salary_high = reference_salary + 1000
        salary_low = reference_salary - 1000
        all_within_bracket = @@all.filter {|employee| salary_high > employee.salary && employee.salary > salary_low}
        others_within_bracket = all_within_bracket.reject {|employee| employee == self} 
    end

end

class Manager
    attr_accessor :name, :department, :age
    
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employees.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        age_arr = self.all.map {|manager| manager.age}
        av_age = age_arr.reduce(:+).to_f / age_arr.length
    end

end

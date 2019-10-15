class Manager

    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees # has many
        Employee.all.select {|employee| employee.manager_name == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        number_of_managers = self.all.length
        total_age_of_managers = self.all.reduce(0) {|age, manager| age += manager.age }
        average_age = (total_age_of_managers * 1.0 / number_of_managers).round(1)
    end

end

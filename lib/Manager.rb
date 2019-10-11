class Manager

    attr_accessor :department, :age, :employees
    attr_reader :name

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age 
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary, self)
        self.employees << new_employee
    end

    def self.all_departments
        self.all.map{|manager| manager.department}
    end

    def self.average_age
        total_age = self.all.map{|manager| (manager.age)}.sum
        average_age = total_age / self.all.size
    end

end

class Manager

    attr_accessor :age, :manager, :department
    attr_reader :name, :age

    @@all=[]

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age.to_f
        Manager.all << self
    end

    def self.all
        @@all
    end
    
    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(employee, salary)
        Employee.new(employee, salary, self)
    end

    def self.all_departments
        #returns the department of all the managers
        Manager.all.map {|manager| manager.department}
    end

    def self.average_age
        #returns average age of all managers
       total = Manager.all.map {|manager| manager.age}.sum
       total /= Manager.all.length
    end


end

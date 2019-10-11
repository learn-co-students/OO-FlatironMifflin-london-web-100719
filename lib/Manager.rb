class Manager

    attr_accessor :name, :department
    attr_reader

    @@all = [ ]


    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        Manager.all << self
    end

    def self.all
        @@all
    end

    def employees
        #returns an Array of all the employees that the manager oversees
        Employee.all.select { |e| e.manager_name == self}
    end

    def hire_employees(name, salary)
        #takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, 
        #and adds that employee to the list of employees that the manager oversees
        Employee.new(name, salary, self)
    end

    def self.all_departments
        #returns an Array of all the department names that every manager oversees
        Manager.all.map { |m| m.department}
    end

    def self.average_age
        #returns a Float that is the average age of all the managers
        manager_amount = Manager.all.map { |m| m.age}.count
        sum_of_age = Manager.all.map { |m| m.age}.size
        Manager.average_age = sum_of_age.to_f / manager_amount.to_f
    end



end

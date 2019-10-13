class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age
        @@all << self
    end 

    def employees(manager_name)
        Employee.all.select {|element| element.manager == manager_name}
    end

    def self.all_department
        Manager.all.map{|element| element.department}
    end 

    def self.average_age
        average_age = 0
        Manager.all.each {|element| average_age += element.age}
        average_age /= Manager.all.size
        return average_age
    end 

    def self.all
        @@all 
    end 

end

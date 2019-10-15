class Manager
    attr_accessor :department, :name 
    attr_reader :age
    
    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age 
        @@all << self 
    end 

    @@all = []

    def self.all 
        @@all 
    end 

    def hire_manager(name, salary)
        @@all << name 
    end 

    def self.all_departments 
        self.all.map{|manager| manager.department}
    end 

    def self.average_age
        sum = 0
        arr = self.all.map {|manager| manager.age}
        arr.each {|x| sum+=x}
        sum/arr.length
    end 
end
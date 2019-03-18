class Manager
    attr_accessor :name, :department, :employees, :age
    @@all = []
    def initialize(name, department, employees, age)
        @name = name
        @department = department
        @employees = employees
        @age = age
        @@all << self
    end
    def self.all
        @@all
    end

end

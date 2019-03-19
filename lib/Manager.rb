class Manager
    attr_accessor :name, :department, :employees, :age
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
        Employee.all.select {|i| i.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end
    def self.all_departments
        Manager.all.map {|i| i.department}
    end
    def self.average_age
       number =  Manager.all.map {|i| i.age}
       number.sum / number.length
    end

end

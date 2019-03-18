class Employee
 attr_accessor :name, :salary, :manager_name
    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end
    def self.all
        @@all
    end
    def manager_name
        Manager.all.select {|manager| manager.name == self}
    end
end

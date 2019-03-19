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
    def self.paid_over(value)
        Employee.all.select {|i| i.salary >= value}
    end
    def self.find_by_department(name)
        Manager.all.find {|i| i.department == name}.employees.first
    end
    def tax_bracket
        mysalary = self.salary
        all_salaries = Employee.all.select {|i| i.salary}
        temp = all_salaries.find_all {|i| i.salary <= mysalary + 1000 && i.salary >= mysalary - 1000}.select {|i| i.name != self.name}
    end

end

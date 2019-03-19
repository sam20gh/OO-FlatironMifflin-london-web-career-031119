require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Alex", "Health", 34)
m2 = Manager.new("James", "Support", 40)

e1 = Employee.new("Sam", 2000, m1)
e2 = Employee.new("Mike", 3000, m2)
e3 = Employee.new("Tom", 12500, m1)

binding.pry
puts "done"

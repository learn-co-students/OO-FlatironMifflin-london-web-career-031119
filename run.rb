require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Manager 1", "Module 3", 31)
m2 = Manager.new("Manager 2", "Module 0", 28)
m3 = Manager.new("Manager 3", "Module all", 25)

e1 = Employee.new("Employee 1", 1500, m1)
e2 = Employee.new("Employee 2", 3000, m1)
e3 = Employee.new("Employee 3", 500, m3)
e4 = Employee.new("Employee 4", 2500, m2)

binding.pry
puts "done"

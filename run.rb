require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Ranjit", "Books", 29)
m2 = Manager.new("Oli", "Computers", 33)
m3 = Manager.new("Peter", "Science", 26)

e1 = Employee.new("Myrto", 30000, "Ranjit")
e2 = Employee.new("Kevin", 35000, "Oli")
e3 = Employee.new("Riccardo", 40000, "Peter")
e4 = Employee.new("Bob", 40001, "Peter")
e5 = Employee.new("Matthew", 40002, "Peter")
e6 = Employee.new("Guy", 40003, "Peter")

binding.pry
puts "done"

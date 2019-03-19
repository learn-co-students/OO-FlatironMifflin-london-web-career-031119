require_relative "lib/Manager"
require_relative "lib/Employee"


require 'pry'


#Test your code here
m1 = Manager.new("Joseph", "finance", 30)
m2 = Manager.new("manuel", "recruitment", 49)
m3 = Manager.new("Tope", "operational", 60)
m4 = Manager.new("Joshua", "HR", 71)
m5 = Manager.new("Dapo", "scout", 39)


e1 = Employee.new("Mike", 20000, m1)
e2 = Employee.new("James", 25654, m3)
e3 = Employee.new("Edwards", 19800, m2)
e4 = Employee.new("Vicky", 32322, m4)
e5 = Employee.new("Becky", 98992, m5)



binding.pry
puts "done"

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here


m1 = Manager.new("Michael", 43, "something")
m2 = Manager.new("Michael2", 41, "somethin4")
m3 = Manager.new("Michael3", 40, "somethin2")
m4 = Manager.new("Michael4", 42, "something1")
m5 = Manager.new("Michael5", 50, "something3")

e1 = Employee.new("Worker1", 40000, "Michael")
e2 = Employee.new("Worker2", 40001, "Michael")
e3 = Employee.new("Worker3", 41002, "Michael2")
e5 = Employee.new("Worker4", 39001, "Michael2")
e4 = Employee.new("Worker5", 40004, "Michael")



binding.pry
puts "done"

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

mike = Manager.new("Mike", 40, "Sales")
ed = Manager.new("Ed", 35, "Customer Relations")

bob = mike.hire_employee("Bob", 20000)
lucy = mike.hire_employee("Lucy", 21000)
greg = mike.hire_employee("Greg", 25000)

binding.pry
puts "done"

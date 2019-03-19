require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


joe = Manager.new("Joe", "one", 62)
  john = Manager.new("John", "two", 44)
    mary = Manager.new("Mary", "three", 35)

tim = joe.hire_employee("Tim", 10000)
ronnie = joe.hire_employee("Ronnie", 10900)
jason = joe.hire_employee("Jason", 9900)
tina = mary.hire_employee("Tina", 5000)

puts "--------------------------"



# p mary.employees

# p Manager.all

# p Manager.average_age

# p Employee.find_by_department("one")

# p tim.tax_bracket






# binding.pry
puts "done"

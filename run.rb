require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new('Mikael', 56, 'law')
manager2 = Manager.new('David', 44, 'music')
manager3 = Manager.new('Sarah',  23, 'books')
manager4 = Manager.new('Louise', 36, 'human rights')

employee1 = Employee.new('Anton', 900, manager1)
employee2 = Employee.new('Mary', 560, manager2)
employee3 = Employee.new('Nicolas', 140, manager3)
employee4 = Employee.new('Julie', 1050 , manager4)

# binding.pry
puts "done"

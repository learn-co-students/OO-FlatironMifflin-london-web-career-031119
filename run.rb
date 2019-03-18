require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new('Mikael', 'law', 56, ['Anton', 'Anna', 'Mary'])
manager2 = Manager.new('David', 'music', 44, ['Molly', 'Robert', 'David'])
manager3 = Manager.new('Sarah', 'books', 23, ['Mikael', 'Peter', 'Gulnaz'])
manager4 = Manager.new('Louise', 'human rights', 36, ['Harry', 'Justine', 'Julia'])

employee1 = Employee.new('Anton', 900, 'Mikael')
employee2 = Employee.new('Mary', 560, 'David')
employee3 = Employee.new('Nicolas', 140, 'Sarah')
employee4 = Employee.new('Julie', 1050 , 'Louise')








# binding.pry
puts "done"

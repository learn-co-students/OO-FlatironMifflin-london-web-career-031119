require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

#Test your code here
tom = Manager.new("Tom","Tomfoolery","50")
jim = Manager.new("Jim","Cust Rels","27")
jim.hire_employee("Phil","100000")

binding.pry
puts "done"

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
bob = Manager.new("Bob", "IT", 25)
rob = Manager.new("Rob", "Business", 31)
rick = Employee.new("Rick", 10, "Bob")
mick = Employee.new("Mick", 12, "Rob")
dick = Employee.new("Dick", 1100, "Bob")
binding.pry
puts "done"

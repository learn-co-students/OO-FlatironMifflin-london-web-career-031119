require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

mark = Manager.new("mark", 45, "Beverage")
peete = Manager.new("peete", 29, "Sex-Toys")
luke = Manager.new("luke", 23, "Dog Food")


bob = Employee.new("bob", 100, "peete")
kob = Employee.new("kob", 1000, "mark")
tob = Employee.new("tob", 209585, "luke")


binding.pry
puts "done"

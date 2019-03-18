require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

bigboss = Manager.new("Big Boss", 80, "Combat")
solid = Manager.new("Solid Snake", 40, "Health")
ocelot = Manager.new("Shalashaska", 77, "Intel")
liquid = Manager.new("Eli", 40, "Transport")
miller = Manager.new("Miller", 70, "R&D")

john = Employee.new("john", 1000, bigboss)
mark = Employee.new("mark", 600, ocelot)
lisa = Employee.new("lisa", 200, liquid)
steven = Employee.new("steven", 800, solid)
jack = Employee.new("jack", 730, miller)
claudette = Employee.new("claudette", 650, ocelot)
jane = Employee.new("jane", 2000, bigboss)
eve = Employee.new("eve", 1500, bigboss)


binding.pry
puts "done"

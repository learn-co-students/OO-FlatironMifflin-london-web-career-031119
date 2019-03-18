class Employee
  attr_accessor :name, :salary, :manager_name
  @@all = []

  def self.all
    @@all
  end

  def self.paid_over(number)
    @@all.select {|employee| employee.salary > number}
  end

  def self.find_by_department(department)
    manager = Manager.all.find {|manager| manager.department == department}
    @@all.find {|employee| employee.manager_name == manager.name}
  end

   def initialize(name, salary, manager_name)
     @name = name
     @salary = salary
     @manager_name = manager_name
     @@all << self
   end

   def tax_bracket
     @@all.select {|employee| self.salary + 1000 > employee.salary && self.salary - 1000 < employee.salary}
   end

end

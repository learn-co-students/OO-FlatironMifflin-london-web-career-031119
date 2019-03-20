require_relative './Manager.rb'

class Employee
  attr_accessor :name, :salary, :manager_name

  @@all = []

  def initialize(name, salary, manager_name)
    @salary = salary
    @name = name
    @manager_name = manager_name
    @@all << self
  end

  def name
    @name
  end

  def salary
    @salary
  end

  def manager_name
    manager_name.to_s
  end

  def self.all
    @@all
  end

  def self.paid_over(matcher)
    Employee.all.select {|i| i.salary > matcher}
  end

  def self.find_by_department(department)
    department_temp = Manager.all.find {|i| i.department.downcase == department.downcase}
    Employee.all.find {|i| i.manager_name == department_temp.name}
  end

  def tax_bracket
  temp_salary = self.salary
  Employee.all.select {|i| i.salary < self.salary + 1000 && i.salary > self.salary - 1000}.select {|i| i.name != self.name}
end



end
#

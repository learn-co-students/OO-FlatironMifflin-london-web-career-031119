class Employee
  attr_accessor :name, :salary, :manager_name
  @@all = []

  def initialize (name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over (min)
    Employee.all.select {|i| i.salary > min}
  end

  def self.find_by_department (dep)
    manager = Manager.all.find {|i| i.department == dep}
    Employee.all.find {|i| i.manager_name = manager.name}.name
  end

  def tax_bracket
    Employee.all.select {|i| (i.salary - self.salary).abs < 1000}
end
end 

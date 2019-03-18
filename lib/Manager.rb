class Manager
  attr_accessor :name, :department, :age, :employee, :salary

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select {|e| e.manager == self}
  end

  def hire_employee(employee, salary)
    employees << Employee.new(employee, salary, self)
  end

  def self.all_departments
    self.all.map {|m| m.department}
  end

  def self.average_age
    ages = self.all.collect {|m| m.age}
    age_sum = ages.inject(0){|sum, x| sum + x }
    (age_sum / ages.size.to_f)
  end

end

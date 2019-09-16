class Manager

  attr_accessor :name, :department, :age
  attr_writer
  attr_reader
  @@all = []


  def self.all
  @@all
  end

  def initialize(name, department, age)
  @name = name
  @department = department
  @age = age
  @@all << self
  end

  def hire_employee(name, salary)
  Employee.new(name, salary, self)
  end

  def employees
    Employee.all.select {|employees| employees.manager == self}
  end

  def self.all_departments
    @@all.map {|managers| managers.department}
  end

  def self.average_age
    total = 0
    Manager.all.each do |manager|
      total += manager.age
    end
    solution = total / Manager.all.length
    end

    




end

class Manager

  @@all = []
  @@departments = []
  @@salaries = []

  attr_reader :name, :department, :age, :employees, :departments, :salaries

  def initialize(name, department, age)
    @name = name
    @age = age
    @department = department
    @employees = []
    @@departments << department
    @@all << self
  end

  def hire_employee(employee_name,salary)
    @employees << Employee.new(employee_name,salary,@department,self)
    @@salaries << salary
  end

  def self.all_departments
    @@departments
  end

  def self.average_age
    all_age = Manager.all.map{|manager|manager.age.to_i}
    all_age.inject(0, :+) / all_age.count
  end

  def self.all
    @@all
  end

end

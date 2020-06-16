class Manager
  attr_accessor :name, :department, :age, :employees
  @@all_departments = []
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @employees = []
    @@all << self
    @@all_departments << department
  end

  def hire_employees(name, salary)
    @employees << Employee.new(name, salary, self.name)
  end

  def self.all_departments
    @@all_departments
  end

  def self.average_age
    arr = @@all.map {|manager| manager.age}
    return (arr.inject(0){|sum,x| sum + x } / arr.length.to_f).round(2)
  end

  def self.all
    @@all
  end

end

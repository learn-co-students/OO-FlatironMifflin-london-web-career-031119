class Manager

  attr_accessor
  attr_reader :name, :age, :department

  @@all = []

  def initialize(name_String, age_Int, department_String)
    @name = name_String
    @age = age_Int
    @department = department_String
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select{ |employee| employee.manager == self }
  end

  def hire_employee(name_string, salary_Integer)
    Employee.new(name_string, salary_Integer, self)
  end

  def self.all_departments
    Manager.all.map{ |manager| manager.department }
  end

  def self.average_age
    sum = 0
    Manager.all.map{ |manager|  sum += manager.age }
    sum / Manager.all.length.to_f
  end
  
end

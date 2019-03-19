class Employee

  attr_accessor
  attr_reader :name, :salary, :manager

  @@all = []

  def initialize(name_String, salary_Integer, manager_Object)
    @name = name_String
    @salary = salary_Integer
    @manager = manager_Object
    @@all << self
  end

  def self.all
    @@all
  end

  def manager_name
    self.manager.name
  end

  def self.paid_over(wage_Integer)
    Employee.all.select{ |employee| employee.salary > wage_Integer}
  end

  def self.find_by_department(department_String)
    Employee.all.find{ |employee| employee.manager.department == department_String}
  end

  def tax_bracket
    Employee.all.select{ |employee| (self.salary - 1000) <= employee.salary && employee.salary <= (self.salary + 1000) }
  end
  
end

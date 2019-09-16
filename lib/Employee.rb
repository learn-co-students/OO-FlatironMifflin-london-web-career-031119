class Employee

  attr_accessor :name, :salary, :manager
  attr_writer
  attr_reader
  @@all = []

  def self.all
  @@all
  end

  def initialize(name, salary, manager)
  @name = name
  @salary = salary
  @manager = manager
  @@all << self
  end

  def paid_over(salary)
    @@all.select {|employee| employee.salary > salary}
  end

  def self.find_by_department(department)
    Employee.all.find {|employee| employee.manager.department == department}
end

  def tax_bracket
      result = Employee.all.select do |employee|
        # employee.salary < self.salary + 1000 && employee.salary > self.salary - 1000
      self.salary < employee.salary && self.salary > employee.salary - 1000 || self.salary > employee.salary && self.salary < employee.salary + 1000
  end
  result
end

end

class Employee

@@all = []

attr_reader :name, :salary, :manager_name, :department

def initialize(name,salary,department,manager_name)
  @name = name
  @salary = salary
  @manager_name = manager_name
  @@all << self
end

def self.all
  @@all
end

def self.paid_over(salary)
  Employee.all.select{|employee|employee.salary.to_i > salary}
end

def self.find_by_department(department)
  manager = Manager.all.find{|manager|manager.department == department}
  Employee.all.find{|employee|employee.manager_name == manager}
end

def self.tax_bracket
  Employee.all.select{|employee|employee.salary.to_i == Range.new(employee.salary.to_i-1000..employee.salary.to_i+1000) }
end

end

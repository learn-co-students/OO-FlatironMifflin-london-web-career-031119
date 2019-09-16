class Employee

attr_accessor :name, :salary, :manager_name

@@all = []

def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
end

def self.all
    @@all
end

def self.paid_over(value)
    Employee.all.select {|emp| emp.salary > value}
end

def self.find_by_department(department)
    manager = Manager.all.find {|item| item.department == department}
    Employee.all.find {|emp| emp.manager_name == manager.name}
end

def tax_bracket
    Employee.all.select {|emp| (self.salary -= 1000) <= emp.salary && emp.salary <= (self.salary += 1000)}
end









end

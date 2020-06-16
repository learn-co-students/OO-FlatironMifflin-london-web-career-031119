class Employee

  attr_accessor :name, :salary, :manager_name

  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name

    @@all << self
    manager_name.employees << self

  end

  def self.all
    @@all
  end

  def self.paid_over(number)
    # return an array of employees that have a salary over that number
    Employee.all.select { |employee|  employee.salary > number }
  end

  def self.find_by_department(department_name)
    Manager.all.find { |manager| manager.department == department_name }
  end

  def self.tax_bracket
    # returns an Array of all the employees whose salaries are within
    # $1000 (± 1000) of the employee who invoked the method
    filtered_salaries = Employee.all.select { |salary| salary.salary <= 1000 && salary.salary >= 550 || salary.salary >= 1000 && salary.salary <= 1500 }
    filtered_employees = filtered_salaries.collect { |employee| employee.name}
    employees

  end

end

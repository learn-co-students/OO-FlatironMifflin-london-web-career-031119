class Employee
  attr_accessor :name, :salary, :manager

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

  def self.paid_over(threshold)
    Employee.all.select {|e| e.salary >= threshold}
  end

  def self.find_by_department(department)
    Employee.all.find {|e| e.manager.department == department}
  end

  def tax_bracket
    range = (self.salary - 1000..self.salary+1000).to_a
    selected = Employee.all.select {|e| range.include?(e.salary)}
    selected.delete(self)
    selected
  end

end

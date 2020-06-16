class Manager

  attr_accessor :name, :department, :age, :employees

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @employees = []

    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
    # @employees << new_employee.name
  end

  def self.all_departments
    Manager.all.collect {|dept| dept.department }
  end

  def self.average_age
    total_managers = Manager.all.length
    result = Manager.all.collect {|age| age.age }.sum / total_managers
    result.to_f.round(2)
  end

end

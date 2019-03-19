class Manager
  attr_accessor :name, :department, :age, :employees
  @@all = []

  def initialize (name, department, age)
      @name = name
      @department = department
      @age = age
      @@all << self
    end

    def self.all
      @@all
    end

    def employees
      Employee.all.select {|i| i.manager_name == self.name}
    end

    def hire_employee (name, salary)
      self.employees << Employee.new(name, salary, self)
    end

    def self.all_departments
      Manager.all.map {|i| i.department}
    end

    def self.average_age
      Manager.all.inject(0) {|sum,i| sum + i.age} /Manager.all.length
    end
end

class Manager

  attr_reader :name, :department, :age
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end


  def employees
    Employee.all.select {|employee| employee.manager_name == self}
  end


  def hire_employee(name, salary)
    Employee.new(self, name, salary)
  end


  # def total_age
  #   Manager.all.map {|manager| manager.age}.sum
  # end
  #
  #
  # def average_age
  #   # total = total_age.inject(:+)
  #   # total / total_age.length.to_f
  #   total_age.sum / total_age.total
  # end

  def total_age
    abc = Manager.all.map {|manager| manager.age}
  end

  def average_age
    # total = total_age.inject(:+)
    # total / total_age.length.to_f
    total_age.sum / total_age.length
  end



end

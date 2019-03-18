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

def paid_over
end

def find_by_department
end

end

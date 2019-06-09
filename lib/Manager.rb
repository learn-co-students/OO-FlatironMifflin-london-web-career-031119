require_relative './Employee.rb'

class Manager
  attr_accessor :name, :age
@@all = []

      def initialize(name, age, department)
          @name = name
          @age = age
          @department = department
          @@all << self
      end


    def name
      @name
    end

    def department
      @department
    end

    def age
      @age.to_i
    end

    # def Employee
    #   \\iterate all emplyees and return with matching self.department AS AN ARRAY
    # end

    def self.all
      @@all
    end

    def hire_employee(name, salary)
      new_emp = Employee.new(name, salary, self.name)
      end

    def self.average_age
      age_temp = Manager.all.map {|i| i.age}
      age_temp.inject{ |sum, el| sum + el }.to_f / arr.size
    end

# returns an Array of all the managers
# Manager#hire_employee
# takes a String argument and a Fixnum argument of an employee's name and the employee's salary,
# respectively, and adds that employee to the list of employees that the manager oversees
# Manager.all_departments
# returns an Array of all the department names that every manager oversees
# Manager.average_age
# returns a Float that is t





end

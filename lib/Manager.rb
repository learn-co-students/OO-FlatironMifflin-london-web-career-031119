class Manager
    attr_accessor :department, :age, :employees
    attr_reader :name

    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @employees = []
        Manager.all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        Manager.all.map { |manager| manager.department }.uniq
    end

    def self.average_age
        sum_of_ages = 0
        Manager.all.each { |manager| sum_of_ages += manager.age }
        
        (sum_of_ages / Manager.all.size.to_f).round(2)
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

end

# Manager#name
# returns a String that is the manager's name

# Manager#department
# returns a String that is the department that the manager oversees

# Manager#age
# returns a Fixnum that is the age of the manager

# Manager#employees
# returns an Array of all the employees that the manager oversees

# Manager.all
# returns an Array of all the managers

# Manager#hire_employee
# takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees

# Manager.all_departments
# returns an Array of all the department names that every manager oversees

# Manager.average_age
# returns a Float that is the average age of all the managers

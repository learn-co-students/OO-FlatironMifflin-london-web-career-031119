class Employee
    attr_accessor :salary, :manager
    attr_reader :name

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        Employee.all << self
        manager.employees << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        Employee.all.select { |employee| employee.salary > salary}
    end

    def self.find_by_department(dept_name)
        Employee.all.find { |employee| employee.manager.department == dept_name }
    end

    def talk
        puts "hello"
    end

    def tax_bracket
        interval = (self.salary - 1000 .. self.salary + 1000)
        Employee.all.select { |employee| interval.include?(employee.salary) }
    end
end

# Employee#name
# returns a String that is the employee's name

# Employee#salary
# returns a Fixnum that is the employee's salary

# Employee#manager_name
# returns a String that is the name of their manager

# Employee.all
# returns an Array of all the employees

# Employee.paid_over
# takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount

# Employee.find_by_department
# takes a String argument that is the name of a department and returns the first employee whose manager is working in that department

# Employee#tax_bracket
# returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
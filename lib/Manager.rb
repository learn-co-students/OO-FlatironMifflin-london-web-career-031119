class Manager

    attr_accessor :name, :age, :department, :employees

    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @employees = []
        @@all << self
    end


    def hire_employee(name, salary)
        emp = Employee.new(name, salary, self)
        @employees << emp
    end

    def self.all
        @@all;
    end

    def self.all_departments
        Manager.all.map {|item| item.department}.uniq
    end


    def self.average_age
        arr = Manager.all.map {|item| item.age}
        (arr.inject(:+) / arr.size.to_f).round(2)
    end

end

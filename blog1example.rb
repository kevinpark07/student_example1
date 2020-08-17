class Student

    attr_accessor :name, :age, :grade

    @@all = []

    def initialize(name, age, grade)
        @name = name
        @age = age
        @grade = grade
        @@all << self
    end

    def self.all
        @@all
    end

    def self.graduate
        self.all.map do |student| 
            if student.grade == "Senior"
                student.grade = "Graduate"
            end
        end
    end

    def self.find_graduates_over_21
        self.all.filter do |student| 
            student.age >= 21 && student.grade == "Graduate"
        end
    end
                

end

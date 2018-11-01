# code here!

class School

    attr_reader :name, :roster, :student, :grade
    

    NEW = []

    def initialize(name)
        @name = name
        @roster = {}
        NEW << roster
    end

    def add_student(student, grade)
        @student = student
        @grade = grade  
        if self.roster.include?(grade)
        self.roster[grade] << student
        else
            self.roster[grade] = []
            self.roster[grade] << student
        end
    end

    def grade(number)
        self.roster[number]
    end

    def sort
        # roster.each {|key, array| << key[array].sort}
        roster.each {|grade, student| roster[grade] = student.sort}
    end



end





class School

    attr_accessor :name, :roster
    
    def initialize (name=nil)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.keys.include? grade 
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_value do |students|
            students.sort!
        end
    end
end
# code here!
class School
    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.key?(grade) 
            @roster[grade].push(name)
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        @roster.each do |grade, name_arr|
            @roster[grade] = name_arr.sort
        end
    end
end

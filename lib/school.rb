class School
    attr_accessor :name, :roster, :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if roster[grade]
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name 
        end
    end

    def grade(num)
        roster.collect do |grade, name|
            if grade == num
                return name
            end
        end
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, name|
            sorted_roster[grade] = name.sort
        end
        sorted_roster
    end



end
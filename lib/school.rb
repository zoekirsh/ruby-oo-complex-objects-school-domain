require 'pry'
class School

    attr_reader :name, :roster

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] = [] if !@roster.include?(grade)
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = @roster.sort.to_h
        sorted_roster.each do |key, value|
            value = value.sort!
        end
        sorted_roster
    end


end

# Write code here
require "pry"
class School
  attr_accessor :roster

  def initialize(newSchool)
    @newSchool = newSchool
    @roster = {}
  end

  def add_student(student, grade)
    if !roster.has_key?(grade)
      roster[grade] = []
      roster[grade].push(student)
    elsif !roster[grade].include?(student)
      roster[grade].push(student)
    else
    end
  end

  def grade(grade)
    roster.each do |key, value| 
      if key == grade
        return value
      end
    end

  end

  def sort
    newRoster = roster.sort.to_h
    newRoster.map {|key, value| [key, value.sort] }.to_h
  end

end
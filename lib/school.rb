require 'pry'

class School

  attr_reader :roster

  def initialize(name) 
    @roster = {}
  end  

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each{|grade, names| 
      sorted_roster[grade] = names.sort
      }
    sorted_roster
  end

end
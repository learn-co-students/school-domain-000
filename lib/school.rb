# Write code here
class School
  attr_reader :roster 

def initialize(school_name)
  @school_name = school_name
  @roster = Hash.new
end


def add_student(name, grade)
  if @roster.has_key?(grade) then @roster[grade] << name else @roster[grade] = [name] end 
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each{|grade, name| @roster[grade] = name.sort }
end


end

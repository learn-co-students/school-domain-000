# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
  end

  def roster
    @roster ||= {}
  end

  def add_student(name, grade)
    roster
    @roster[grade]||=[]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = @roster.each { |k, v| @roster[k]=v.sort }
    sorted.sort.to_h
  end
end
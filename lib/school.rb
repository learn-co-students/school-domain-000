# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.include?(grade)==false
      @roster[grade] = []
      @roster[grade] << student
    elsif @roster.include?(grade)
      @roster[grade] << student
    end
  end

  def grade(g)
    if @roster.include?(g)
      return @roster[g]
    end
  end

  def sort
    @roster.each {|k,v| v.sort!}
  end

end

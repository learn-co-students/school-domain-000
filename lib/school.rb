# Write code here

class School

attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name,grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |x,y|
      @roster[x].sort!
    end
    @roster
  end


end


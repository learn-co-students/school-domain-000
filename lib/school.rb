# Write code here

class School

  attr_accessor :school, :ROSTER

  ROSTER={}

  def initialize(school)
    @school=school
    ROSTER.clear
  end

  def roster
    ROSTER
  end

  def add_student(name,grade)

    if ROSTER.has_key?(grade)
      ROSTER[grade] << "#{name}"
    else
      ROSTER[grade]= []
      ROSTER[grade] << "#{name}"
    end
  end

  def grade(num)
    ROSTER[num]
  end

  def sort
    ROSTER.each_value do |x|
      x=x.sort!
    end


  end

end
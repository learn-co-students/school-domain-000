# Write code here
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
	@roster = {}
  end
  
  def add_student(name, grade)
    @roster.has_key?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each_with_object({}) {|(k,v), res| res[k] = v.sort}
  end
end
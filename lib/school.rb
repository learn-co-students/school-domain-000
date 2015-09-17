# code here!

require 'pry'

class School

    attr_accessor :roster, :school

  def initialize(name)
    @school = name
    @roster = {}
  end

  def self.roster
    @school
    binding.pry
  end

  def add_student(name, grade)
 
    if @roster[grade].nil?
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |k, v|

      sorted_hash[k] = v.sort
    end
    sorted_hash
  end
end

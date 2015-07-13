require "pry"

class School

	def initialize(school)
		@school = school
		@roster = {}
	end

	def roster
		@roster
  end

	def add_student (student, grade)
		@student = student
		@grade = grade
		if @roster[grade]
			@roster[grade]<<student
		else
			@roster[grade] = [student]
		end
	end

	def grade(num)
		@roster[num]
	end

	def sort
		@roster.each do |grade, names|
			names.sort!
		end
	end

end




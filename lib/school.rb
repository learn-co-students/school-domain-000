require 'pry'

class School
	attr_reader :roster
	def initialize(name)
		@roster = {}
	end

	def add_student(name, grade)
		@roster[grade] ||= []
		@roster[grade] << name
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		new_hash = {}
		# binding.pry
		@roster.each do |key, value|
			new_hash[key] = value.sort.flatten
		end
		new_hash
	end

end

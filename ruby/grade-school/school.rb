require 'pry'
class School
  def initialize
    @school = {}
  end

  attr_reader :school

  def add(student, grade_num)
    if school[grade_num]
      school[grade_num] << student
    else
      school[grade_num] = [student]
    end

    school[grade_num].sort!
  end

  def grade(grade_num)
    if school[grade_num]
      school[grade_num].sort
    else
      []
    end
  end

  def to_hash
    school.sort_by { |k,v| k }.to_h
  end
end

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
  end

  def grade(grade_num)
    school[grade_num].sort || {}
  end

  def to_hash
    school
  end
end

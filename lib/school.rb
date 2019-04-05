# code here!
require 'pry'

class School
  
  attr_reader :roster, :school_name
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student,grade)
    if @roster[grade] == nil
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster = @roster.sort.to_h
    @roster.each do |x, y|
      y.sort!
    end
  end
end
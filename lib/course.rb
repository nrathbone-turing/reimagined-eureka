class Course

  attr_reader :name, :capacity, :students, :full

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end




  def enroll(student)
    @students << student
  end

  def full?
    @students.size >= @capacity
    
    if true
      @full = true
    end
  end
  
end
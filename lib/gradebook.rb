class Gradebook

  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    gradebook = {}
 
    @courses.each do |course|
      gradebook[course] = course.students
    end
      
  end

  def students_below(threshold)
    
  end

end

# example return value of list_all_students

# {
#   <#Course> => [<#Student>, <#Student>],
#   <#Course> => [<#Student>]
# }
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
     {
    # :Course => @courses.students
    :course => @courses,
    :students => @student
    }
  end
end

# example return value of list_all_students

# {
#   <#Course> => [<#Student>, <#Student>],
#   <#Course> => [<#Student>]
# }
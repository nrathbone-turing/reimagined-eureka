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
    all_enrolled_students = {}
 
    @courses.each do |course|
      all_enrolled_students[course] = course.students
    end
      
  end

  def students_below(threshold)
    students_below_threshold = []

    @courses.each do |course|
      course.student.each do |student|
        students_below_threshold << student
          if student.grade <= threshold 
          end
        end
    end
  end

end


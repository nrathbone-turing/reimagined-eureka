require 'rspec'
require 'pry'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe 'Gradebook' do

  before(:each) do
    @gradebook = Gradebook.new("Megan")
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new("Physics", 1)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  it 'exists' do
    expect(@gradebook).to be_an_instance_of(Gradebook)
  end

  it 'has Megan listed as the instructor' do
    expect(@gradebook.instructor).to eq("Megan")
  end

  it 'starts with an empty array of courses' do
    expect(@gradebook.courses).to eq([])
  end

  it 'can add new courses to the array' do
    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    
    expect(@gradebook.courses).to eq([@course1, @course2])
  end

  it 'returns a list of students in a hash where the key is a Course object and the value is an Array of Student objects' do
    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    
    p @gradebook.list_all_students
  end


end
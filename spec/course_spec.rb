require 'rspec'
require 'pry'
require './lib/student'
require './lib/course'

RSpec.describe Course do

  before(:each) do
    @course = Course.new("Calculus", 2)
  end

  it 'exists' do
  expect(@course).to be_an_instance_of(Course)
  end

  it 'has a name of Calculus' do
    expect(@course.name).to eq("Calculus")
  end

  it 'has a capacity of 2' do
    expect(@course.capacity).to eq(2)
  end

  it 'has an empty array of students' do
    expect(@course.students).to eq([])
  end

  it 'is not full with no students' do
    expect(@course.full).to eq(false)
  end

  it 'can enroll students successfully' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    
    @course.enroll(student1)
    @course.enroll(student2)

    expect(@course.students). to eq([student1, student2])
  end

  it 'is full when the number of students is >= the capacity' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    
    @course.enroll(student1)
    @course.enroll(student2)

    expect(@course.full?).to eq(true)

    p @course
  end


end

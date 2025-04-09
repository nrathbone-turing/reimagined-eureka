require 'rspec'
require 'pry'
require './lib/student'


RSpec.describe Student do

  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it 'exists' do    
    expect(@student).to be_an_instance_of(Student)
  end

  it 'has a name of Morgan' do
   expect(@student.name).to eq("Morgan")
  end

  it 'has an age of 21' do
    expect(@student.age).to eq(21)
  end

  it 'is created with an empty array of scores' do
    expect(@student.scores).to eq([])
  end

  it 'adds scores to @scores array when provided' do
    @student.log_score(89)
    @student.log_score(78)

    expect(@student.scores).to eq([89, 78])
  end

  it 'correctly calculates averages of all the scores' do
    @student.log_score(89)
    @student.log_score(78)
    
    expect(@student.grade).to eq(83.5)
  end

end
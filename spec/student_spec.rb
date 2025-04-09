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

end



# pry(main)> @student.log_score(89)

# pry(main)> @student.log_score(78)    

# pry(main)> @student.scores
# # => [89, 78]

# pry(main)> @student.grade # Average of all the scores
# # => 83.5
require 'rspec'
require 'pry'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe 'Gradebook' do

  before(:each) do
    @gradebook = Gradebook.new("Megan")
  end

  it 'exists' do
    expect(@gradebook).to be_an_instance_of(Gradebook)
  end

  it 'has Megan listed as the instructor' do
    expect(@gradebook.instructor).to eq("Megan")
  end

  it 'starts with an empty array of courses' do
    expect(@gradebook.courses).to eq("[]")
  end

end
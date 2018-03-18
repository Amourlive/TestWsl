class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, age:, occupation:, hobby: nil, birthplace: 'Sleepy Creek')
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

option = { age: 17, occupation: 'blabla', hobby: 'bla', birthplace: 'blablabla' }

foo = Candidate.new('Alex', option)
puts foo.inspect
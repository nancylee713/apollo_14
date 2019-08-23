require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many(:missions).through(:astronaut_missions)}
  end

  describe 'instance methods' do
    it 'calculates average age of all astronauts' do
      neil_armstrong = Astronaut.create!(name: "Neil Armstrong", age: 30, job: "Commander")
      buzz_aldrin = Astronaut.create!(name: "Buzz Aldrin", age: 40, job: "Engineer")
      pete_conrad = Astronaut.create!(name: "Pete Conrad", age: 50, job: "Aviator")

      expect(Astronaut.average_age).to eq(40)
    end
  end
end

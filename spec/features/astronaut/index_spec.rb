require 'rails_helper'

RSpec.describe "the Astronaut index page" do
  before(:each) do
    @neil_armstrong = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
    @buzz_aldrin = Astronaut.create!(name: "Buzz Aldrin", age: 37, job: "Engineer")
    @pete_conrad = Astronaut.create!(name: "Pete Conrad", age: 37, job: "Aviator")
  end
  
  it "should display all astronauts" do
    visit "/astronauts"

    expect(page).to have_content(@neil_armstrong.name)
    expect(page).to have_content(@neil_armstrong.age)
    expect(page).to have_content(@neil_armstrong.job)

    expect(page).to have_content(@buzz_aldrin.name)
    expect(page).to have_content(@buzz_aldrin.age)
    expect(page).to have_content(@buzz_aldrin.job)

    expect(page).to have_content(@buzz_aldrin.name)
    expect(page).to have_content(@buzz_aldrin.age)
    expect(page).to have_content(@buzz_aldrin.job)
  end
end

# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job

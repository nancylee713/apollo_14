require 'rails_helper'

RSpec.describe "the Astronaut index page" do
  before(:each) do
    @neil_armstrong = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
    @buzz_aldrin = Astronaut.create!(name: "Buzz Aldrin", age: 37, job: "Engineer")
    @pete_conrad = Astronaut.create!(name: "Pete Conrad", age: 37, job: "Aviator")

    @lightsail_2 = @neil_armstrong.missions.create!(title: "LightSail 2", time_in_space: 2700)
    @chandrayaan_2 = @neil_armstrong.missions.create!(title: "Chandrayaan-2", time_in_space: 5000)
    @mars_2020 = @buzz_aldrin.missions.create!(title: "Mars 2020", time_in_space: 3300)
    @hayabusa_2 = @buzz_aldrin.missions.create!(title: "Hayabusa2", time_in_space: 2345)
    @insight = @pete_conrad.missions.create!(title: "InSight", time_in_space: 8000)
    @osiris_rex = @pete_conrad.missions.create!(title: "OSIRIS-REx", time_in_space: 1500)
  end

  it "should display all astronauts" do
    visit "/astronauts"

    within "#astronaut-#{@neil_armstrong.id}" do
      expect(page).to have_content(@neil_armstrong.name)
      expect(page).to have_content(@neil_armstrong.age)
      expect(page).to have_content(@neil_armstrong.job)
    end

    within "#astronaut-#{@buzz_aldrin.id}" do
      expect(page).to have_content(@buzz_aldrin.name)
      expect(page).to have_content(@buzz_aldrin.age)
      expect(page).to have_content(@buzz_aldrin.job)
    end

    within "#astronaut-#{@pete_conrad.id}" do
      expect(page).to have_content(@pete_conrad.name)
      expect(page).to have_content(@pete_conrad.age)
      expect(page).to have_content(@pete_conrad.job)
    end
  end

  it "displays the average age of all astronauts" do
    visit "/astronauts"

    expect(page).to have_content("Average Age: #{Astronaut.average_age.to_i}")
  end

  it "displays a list of the space missions' in alphabetical order for each astronaut" do
    visit "/astronauts"

    within "#astronaut-#{@neil_armstrong.id}" do
      expect(page).to have_content(@chandrayaan_2.title)
      expect(page).to have_content(@lightsail_2.title)
    end

    within "#astronaut-#{@buzz_aldrin.id}" do
      expect(page).to have_content(@hayabusa_2.title)
      expect(page).to have_content(@mars_2020.title)
    end

    within "#astronaut-#{@pete_conrad.id}" do
      expect(page).to have_content(@insight.title)
      expect(page).to have_content(@osiris_rex.title)
    end

  end
end

# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job

# As a visitor,
# When I visit '/astronauts'
# I see the average age of all astronauts.
#
# (e.g. "Average Age: 34")


# As a visitor,
# When I visit '/astronauts'
# I see a list of the space missions' in alphabetical order for each astronaut.
#
# (e.g "Apollo 13"
#      "Capricorn 4"
#      "Gemini 7")

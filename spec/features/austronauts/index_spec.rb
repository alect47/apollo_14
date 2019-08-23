require 'rails_helper'

describe 'When user visits astronauts index' do
  it 'the see a list of astronauts with info' do
    niel = Astronaut.create(name: 'Niel Armstrong', age: 37, job: "Commander")
    phil = Astronaut.create(name: 'Phil Armstrong', age: 42, job: "Pilot")
    visit '/astronauts'
    expect(page).to have_content(niel.name)
    expect(page).to have_content(niel.age)
    expect(page).to have_content(niel.job)
    expect(page).to have_content(phil.name)
    expect(page).to have_content(phil.age)
    expect(page).to have_content(phil.job)
  end

  it 'Shows average age of all astronauts' do
    niel = Astronaut.create(name: 'Niel Armstrong', age: 37, job: "Commander")
    phil = Astronaut.create(name: 'Phil Armstrong', age: 42, job: "Pilot")
    visit '/astronauts'
    expect(page).to have_content("Average age: 39.5")
  end

  it 'Shows list of space missions in order for each astronaut' do
    apollo = Mission.create(title: "Apollo 13", time_in_space: 4)
    capricorn = Mission.create(title: "Capricorn 4", time_in_space: 9)
    gemini = Mission.create(title: "Gemini 7", time_in_space: 4)
    niel = Astronaut.create(name: 'Niel Armstrong', age: 37, job: "Commander")
    phil = Astronaut.create(name: 'Phil Armstrong', age: 42, job: "Pilot")

    apollo.astronauts << niel
    apollo.astronauts << phil
    capricorn.astronauts << niel
    gemini.astronauts << niel
    gemini.astronauts << phil
    binding.pry
    visit '/astronauts'
    expect(page).to have_content("Niel Armstrong: Apollo 13, Capricorn 4, Gemini 7")
    expect(page).to have_content("Phil Armstrong: Apollo 13, Gemini 7")
  end
end

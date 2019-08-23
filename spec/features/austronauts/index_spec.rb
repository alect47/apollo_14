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
end

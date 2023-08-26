require 'rails_helper'

RSpec.describe "authors index page", type: :feature do
  it "For each parent table
  As a visitor
  When I visit '/parents'
  Then I see the name of each parent record in the system" do
    author1 = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)
    author2 = Author.create(name: "George R.R. Martin", hometown: "Bayonne, New Jersey", currently_writing: false, total_awards: 5)
    author3 = Author.create(name: "Stephen King", hometown: "Portland, Maine", currently_writing: true, total_awards: 15)

    visit "/authors"

    expect(page).to have_content(author1.name)
    expect(page).to have_content(author2.name)
    expect(page).to have_content(author3.name)
  end

  it "can see all author names, hometowns, writing status, total_awards" do
end
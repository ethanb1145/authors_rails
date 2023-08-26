require 'rails_helper'

RSpec.describe "authors show page", type: :feature do
  it "As a visitor
  When I visit '/authors/:id'
  Then I see the author with that id including the authors's attributes
  (data from each column that is on the author table)" do
    author1 = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)

    visit "/authors/#{author1.id}"

    expect(page).to have_content(author1.name)
    expect(page).to have_content(author1.hometown)
    expect(page).to have_content(author1.currently_writing)
    expect(page).to have_content(author1.total_awards)
  end
end
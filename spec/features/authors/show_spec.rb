require 'rails_helper'

RSpec.describe "authors show page", type: :feature do
  it "As a visitor
  When I visit '/parents/:id'
  Then I see the parent with that id including the parent's attributes
  (data from each column that is on the parent table)" do
    author1 = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)

    visit "/authors/#{author1.id}"

    expect(page).to have_content(author1.name)
    expect(page).to have_content(author1.hometown)
    expect(page).to have_content(author1.currently_writing)
    expect(page).to have_content(author1.total_awards)
  end
end
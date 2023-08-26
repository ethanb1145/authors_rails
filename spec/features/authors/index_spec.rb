require 'rails_helper'

RSpec.describe "authors index page", type: :feature do
  before :each do 
    @author1 = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)
    @author2 = Author.create(name: "George R.R. Martin", hometown: "Bayonne, New Jersey", currently_writing: false, total_awards: 5)
    @author3 = Author.create(name: "Stephen King", hometown: "Portland, Maine", currently_writing: true, total_awards: 15)
  end

  it "For each parent table
  As a visitor
  When I visit '/parents'
  Then I see the name of each parent record in the system" do
    visit "/authors"

    expect(page).to have_content(@author1.name)
    expect(page).to have_content(@author2.name)
    expect(page).to have_content(@author3.name)
  end

  it "As a visitor
  When I visit '/parents/:id'
  Then I see the parent with that id including the parent's attributes
  (data from each column that is on the parent table)" do
    visit "/authors/1"

    expect(page).to have_content(@author1.name)
    expect(page).to have_content(@author1.hometown)
    expect(page).to have_content(@author1.currently_writing)
    expect(page).to have_content(@author1.total_awards)
  end
end
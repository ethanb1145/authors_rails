require 'rails_helper'

RSpec.describe "author creation", type: :feature do 
  it "As a visitor
  When I visit the Author Index page
  Then I see a link to create a new Author record, New Author
  When I click this link
  Then I am taken to '/authors/new' where I  see a form for a new author record
  When I fill out the form with a new author's attributes:
  And I click the button Create Author to submit the form
  Then a `POST` request is sent to the '/parents' route,
  a new author record is created,
  and I am redirected to the Author Index page where I see the new Author displayed" do

    visit "/authors"
    
    click_link "New Author"

    fill_in "Author Name", with: "John D"
    fill_in "Hometown", with: "Denver"
    check "Currently Writing?"
    fill_in "Total Awards", with: "7"

    click_button "Create Author"

    expect(current_path).to eq("/authors")
    expect(page).to have_content("John D")
  end
end
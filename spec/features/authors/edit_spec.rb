require 'rails_helper'

RSpec.describe "the author edit" do
  it "As a visitor
  When I visit the author index page
  Next to every author, I see a link to edit that author's info
  When I click the link, I should be taken to that parent's edit page where I can update its information " do
    author = Author.create(name: "John Dwayne", hometown: "Denver", currently_writing: true, total_awards: 10)

    visit "/authors"

    click_link "Update"

    fill_in "Name", with: "John D"
    fill_in "Hometown", with: "Seattle"
    check "Currently writing"
    fill_in "Total awards", with: "20"
    click_button "Update Author"

    expect(current_path).to eq("/authors")
    expect(page).to have_content("John D")
  end
end
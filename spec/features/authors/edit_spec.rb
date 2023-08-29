require 'rails_helper'

RSpec.describe "the artist edit" do
  it "can edit the author" do
    author = Author.create(name: "John Dwayne", hometown: "Denver", currently_writing: true, total_awards: 10)

    visit "/authors"

    click_link "Update"

    fill_in "Name", with: "John D"
    fill_in "Hometown", with: "Seattle"
    check "Currently writing"
    fill_in "Total awards", with: "20"
    click_button "Update Author"

    expect(current_path).to eq("/authors")
    expect(page).to have_content(author.name)
  end
end
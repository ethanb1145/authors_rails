require 'rails_helper'

RSpec.describe "the artist edit" do
  it "can edit the author" do
    author = Author.create(name: "John Dwayne")

    visit "/artists"

    expect(page).to have_content("John Dwayne")

    click_button "Update"

    fill_in "Name", with: "John D"
    click_button "Update Author"

    expect(current_path).to eq("/artists")
    expect(page).to have_content("John D")
  end
end
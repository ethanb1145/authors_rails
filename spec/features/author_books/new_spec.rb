require 'rails_helper'

RSpec.describe "creating a new book for an author" do
  it "creates a new book and displays its attributes" do
    author = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)

    visit "/authors/#{author.id}/books/new"

    fill_in "book_book_name", with: "New book"
    fill_in "book_genre", with: "Mystery"
    check "book_series"
    fill_in "book_page_count", with: 300

    click_button "Create Book for Author"

    expect(current_path).to eq("/authors/#{author.id}/books")
    expect(page).to have_content("New book")
    expect(page).to have_content("Mystery")
    expect(page).to have_content("true") 
    expect(page).to have_content(300)
  end
end
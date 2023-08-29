require 'rails_helper'

RSpec.describe "creating a new book for an author" do
  it "As a visitor
  When I visit a Author Books Index page
  Then I see a link to add a new book for that author Create Book
  When I click the link
  I am taken to '/authors/:author_id/books/new' where I see a form to add a book
  When I fill in the form with the book's attributes:
  And I click the button Create Book
  Then a `POST` request is sent to '/authors/:author_id/books',
  a new book object/row is created for that author,
  and I am redirected to the Author Books Index page where I can see the new book listed" do
    author = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)

    visit "/authors/#{author.id}/books/new"

    fill_in "book_name", with: "New book"
    fill_in "genre", with: "Mystery"
    check "series"
    fill_in "Total pages", with: 300

    click_button "Create Book for Author"

    expect(current_path).to eq("/authors/#{author.id}/books")
    expect(page).to have_content("New book")
    expect(page).to have_content("Mystery")
    expect(page).to have_content("true") 
  end
end
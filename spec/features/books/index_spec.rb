require 'rails_helper'

RSpec.describe "Books index page", type: :feature do
  it "As a visitor
  When I visit '/books'
  Then I see each Book in the system including the Book's attributes
  (data from each column that is on the book table)" do
    author = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)
    author.books.create({book_name: "Harry Potter and the Philosopher's Stone", genre: "Fantasy", series: true, page_count: 223})

    visit "/books"

    expect(page).to have_content("Book Name: Harry Potter and the Philosopher's Stone")
    expect(page).to have_content("Genre: Fantasy")
    expect(page).to have_content("Series: true")
    expect(page).to have_content("Page Count: 223")
  end
end

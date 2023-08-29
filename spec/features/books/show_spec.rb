require 'rails_helper'

RSpec.describe "books show page", type: :feature do
  it "As a visitor
  When I visit '/books/:id'
  Then I see the book with that id including the book's attributes
  (data from each column that is on the book table)" do
    author = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)
    book = author.books.create({book_name: "Harry Potter and the Philosopher's Stone", genre: "Fantasy", series: true, page_count: 223})


    visit "/books/#{book.id}"

    expect(page).to have_content(book.book_name)
    expect(page).to have_content(book.genre)
    expect(page).to have_content(book.series)
    expect(page).to have_content(book.page_count)
  end
end
require 'rails_helper'

RSpec.describe "authors books index page" do 
  it "As a visitor
  When I visit '/parents/:parent_id/child_table_name'
  Then I see each Child that is associated with that Parent with each Child's attributes
  (data from each column that is on the child table)" do 
    author = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)
    book = author.books.create({book_name: "Harry Potter and the Philosopher's Stone", genre: "Fantasy", series: true, page_count: 223})

    visit "/authors/#{author.id}/books"

    expect(page).to have_content(book.book_name)
    expect(page).to have_content(book.genre)
  end
end
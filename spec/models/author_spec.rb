require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "validations" do
    it {should have_many(:books)}
  end

  describe "create_book" do
    it "can create books" do 
      author = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)

      book = {
        book_name: "Harry Potter and the Sorcerer's Stone",
        genre: "Fantasy",
        series: true,
        page_count: 320
      }

      author.create_book(book)

      expect(author.books.first.book_name).to eq("Harry Potter and the Sorcerer's Stone")
    end
  end
end
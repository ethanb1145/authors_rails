class Author < ApplicationRecord
  has_many :books

  def create_book(attributes)
    books.create(attributes)
  end
end
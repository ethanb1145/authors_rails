class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true
  validates :hometown, presence: true
  validates :total_awards, presence: true

  def create_book(attributes)
    books.create(attributes)
  end
end
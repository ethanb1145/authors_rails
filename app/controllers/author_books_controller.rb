class AuthorBooksController < ApplicationController
  def index
    author = Author.find(params[:id])
    @books = author.books
  end

  def new
    author = Author.find(params[:id])
    @book = author.books.build
  end

  def create
    author = Author.find(params[:id])
    @book = author.books.build(book_params)

    redirect_to "/authors/#{author.id}/books"

  end

  def show
    author = Author.find(params[:id])
    @book = author.books.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:book_name, :genre, :series, :page_count)
  end
end
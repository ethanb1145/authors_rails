class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @author = Author.find(params[:id])
    @book = Book.new
  end

  def show 
    @book = Book.find(params[:id])
  end
end
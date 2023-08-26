class BooksController < ApplicationController
  def index
    @books = @author.books.all
  end

  def show
  end

  def new
    @book = @author.books.new
  end

  def create
    @book = @author.books.new(book_params)
    if @book.save
      redirect_to '/authors'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @book.update(book_params)
      redirect_to '/authors'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to '/authors'
  end
end
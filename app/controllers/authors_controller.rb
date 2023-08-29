class AuthorsController < ApplicationController
  def index 
    @authors = Author.order(created_at: :desc)
  end

  def new 

  end

  def create
    author = Author.new(author_params)
    author.save
    redirect_to '/authors'
  end

  def show 
    @author = Author.find(params[:id])
    @book_count = @author.books.count
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    author.update(author_params)

    author.save

    redirect_to "/authors"
  end

  def destroy
    Author.destroy(params[:id])
    redirect_to "/authors"
  end

  private

  def author_params
    params.require(:author).permit(:name, :hometown, :currently_writing, :total_awards)
  end
end
class AuthorsController < ApplicationController
  def index 
    @authors = Author.order(created_at: :desc)
  end

  def new 

  end

  def create
    author = Author.new({
      name: params[:author][:name],
      hometown: params[:author][:hometown],
      currently_writing: params[:author][:currently_writing],
      total_awards: params[:author][:total_awards]
    })
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
    author.update({
      name: params[:author][:name],
      hometown: params[:author][:hometown],
      currently_writing: params[:author][:currently_writing],
      total_awards: params[:author][:total_awards]
    })

    author.save

    redirect_to "/authors/#{author.id}"
  end

  def destroy
    Author.destroy(params[:id])
    redirect_to "/authors"
  end
end
class AuthorsController < ApplicationController
  def index 
    @authors = Author.all
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

  def new_book
    @author = Author.find(params[:author_id])
    @book = author.books.build
  end

  def create_book
    author = Author.find(params[:author_id])
    book = author.books.build(book_params)
  end
end
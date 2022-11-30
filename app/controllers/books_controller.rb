class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_parms)
    @book.save
    redirect_to index
  end

  def index
    @books = Book.all
  end

  def show
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end

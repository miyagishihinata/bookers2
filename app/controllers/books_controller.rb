class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_parms)
    book.save
    redirect_to '/books/index'
  end

  def index
  end

  def show
  end

  def destroy
  end

  private
  def book_parms
    params.require(:book).permit(:title, :body)
  end

end

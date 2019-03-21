class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to @book
  end

  def show
    @book = Book.find(params[:id])
    @authors_books = AuthorsBook.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to @book
  end

  def destroy
    Book.find(params[:id]).delete
    redirect_to '/books'
  end

  private

  def book_params
    params.require(:book).permit(:title, :pages)
  end
end

require 'pry'
class AuthorsBooksController < ApplicationController

  def create
    a= Book.find(params[:book_id])
    b= Author.find(params[:authors_book][:author_id])
    a.authors << b
    redirect_to a
  end

  def destroy
    i = Book.find(params[:book_id])
    x = AuthorsBook.find(params[:id])
    x.destroy
    redirect_to i
  end

  private
end

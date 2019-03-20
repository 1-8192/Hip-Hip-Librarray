require 'pry'
class AuthorsBooksController < ApplicationController

  def create
    a= Book.find(params[:book_id])
    b= Author.find(params[:authors_book][:author_id])
    a.authors << b
    redirect_to a
  end

  def destroy
    a= Book.find(params[:book_id])
    b= Author.find(params[:authors_book][:author_id])
    AuthorsBook.find_by(author_id: b_id, book_id: a.id).destroy
    redirect_to a
  end

  private

  # def whatever_params
  #   params.require(:authors_book).permit(:author_id, :book_id)
  # end
end

class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to @author
    end
    render :new
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    redirect_to @author
  end

  def destroy
    Author.find(params[:id]).delete
    redirect_to '/authors'
  end

  private

  def author_params
    params.require(:author).permit(:name, :birth_year)
  end
end

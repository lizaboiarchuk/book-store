class BookInfoController < ApplicationController
  def index
    @book = Book.find(params[:format])
  end
  def show
    @book = Book.find(params[:id])
    render :index
  end
end

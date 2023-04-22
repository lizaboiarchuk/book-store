class LibraryController < ApplicationController
  def index
    @books = Book.all
  end
end

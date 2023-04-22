class PurchasesController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @purchase = Purchase.new(book_name: @book.Title, book_price: @book.Price)
  end

  def create
    @purchase = Purchase.new(purchase_params)
  end

  private

  def purchase_params
    params.require(:purchase).permit(:book_name, :book_price, :name, :surname, :email, :country, :city, :address)
  end

end

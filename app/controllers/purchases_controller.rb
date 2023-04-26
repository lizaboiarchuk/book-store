class PurchasesController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @purchase = Purchase.new(book_name: @book.Title, book_price: @book.Price)
  end


  def create
    @book = Book.find(params[:book_id])
    @purchase = Purchase.new(purchase_params)

    respond_to do |format|
      if @purchase.valid?

        PurchaseMailer.purchase_email(@book, @purchase).deliver_now
        # SendPurchaseEmailJob.perform_later(@book, @purchase)

        format.turbo_stream do
          render turbo_stream: turbo_stream.replace('purchase_form', partial: 'success', locals: { book: @book })
        end
      else
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace('purchase_form', partial: 'error', locals: { purchase: @purchase })
        end
      end
    end
  end




  def purchase_params
    params.require(:purchase).permit(:book_name, :book_price, :name, :surname, :email, :country, :city, :address)
  end
end

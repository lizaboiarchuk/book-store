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
        format.turbo_stream do
          render turbo_stream: turbo_stream.update('purchase_form') do |stream|
            stream.html render_to_string(partial: 'purchases/success', locals: { book: @book })
          end
        end

        # Send email here
        PurchaseMailer.purchase_email(@book, @purchase).deliver_now
      else
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace('purchase_form', partial: 'purchases/form', locals: { purchase: @purchase, book: @book })
        end
      end
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:book_name, :book_price, :name, :surname, :email, :country, :city, :address)
  end
end

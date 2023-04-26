class SendPurchaseEmailJob < ApplicationJob
  queue_as :default

  def perform(book, purchase_attributes)
    @book = book
    @purchase = Purchase.new(purchase_attributes)
    PurchaseMailer.purchase_email(@book, @purchase).deliver_now
  end
end
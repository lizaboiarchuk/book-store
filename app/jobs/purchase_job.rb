class PurchaseJob < ApplicationJob
  queue_as :default

  def perform(purchase_id, book_id)
    purchase = Purchase.find(purchase_id)
    purchase.perform(book_id)
  end
end

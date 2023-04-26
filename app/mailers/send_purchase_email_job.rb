class SendPurchaseEmailJob < ApplicationJob
  queue_as :default

  def perform(book, purchase)
    PurchaseMailer.purchase_email(book, purchase).deliver_now
  end
end
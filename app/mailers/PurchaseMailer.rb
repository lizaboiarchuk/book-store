class PurchaseMailer < ApplicationMailer
  def purchase_email(book, purchase)
    @book = book
    @purchase = purchase
    mail(to: purchase.email, subject: 'Purchase Confirmation')
  end
end
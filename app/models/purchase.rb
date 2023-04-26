class Purchase
  include ActiveModel::Model
  attr_accessor :book_name, :book_price, :name, :surname, :email, :country, :city, :address

  validates :book_name, :book_price, :name, :surname, :email, :country, :city, :address, presence: true
end

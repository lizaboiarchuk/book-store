class Purchase
  include ActiveModel::Model
  attr_accessor :book_name, :book_price, :name, :surname, :email, :country, :city, :address

  validates :book_name, :book_price, :name, :surname, :email, :country, :city, :address, presence: true

  def to_hash
    {
      book_name: book_name,
      book_price: book_price,
      name: name,
      surname: surname,
      email: email,
      country: country,
      city: city,
      address: address
    }
  end
end

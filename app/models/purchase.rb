class Purchase
  include Mongoid::Document
  include Mongoid::Timestamps
  field :book_name, type: String
  field :book_price, type: Float
  field :name, type: String
  field :surname, type: String
  field :email, type: String
  field :country, type: String
  field :city, type: String
  field :address, type: String
end

class Book < ApplicationRecord
  include Mongoid::Document
  include Mongoid::Timestamps

  field :Id, type: String
  field :Title, type: String
  field :Author, type: String
  field :Genres, type: Array
  field :Tags, type: Array
  field :Description, type: String
  field :Price, type: Float
  field :Image_url, type: String

  validates :Idd, presence: true, uniqueness: true
  validates :Title, presence: true
  validates :Author, presence: true
  validates :Genres, presence: true
  validates :Tags, presence: true
  validates :Description, presence: true
  validates :Price, presence: true
end

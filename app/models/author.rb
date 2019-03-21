class Author < ApplicationRecord
  has_many :authors_books, dependent: :destroy
  has_many :books, through: :authors_books

  validates :name, presence: true
  validates :birth_year, presence:true
  validates :birth_year, numericality: { only_integer: true }
  validates :birth_year, numericality: { less_than_or_equal_to: 2019 }
end

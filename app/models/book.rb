class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  GENRES = ["Fantasy", "Comedy", "Thriller", "Romance", "Science Fiction", "Non-Fiction", "Horror", "Other"]
  validates :title, presence: true, uniqueness: true
  validates :year, presence: true
  validates :genre, presence: true, inclusion: { in: GENRES }
end

class Review < ApplicationRecord
  belongs_to :book

  validates :content, presence: true
  validates :user, presence: true
  validates :stars, presence: true, inclusion: { in: (1..5) }
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese italian japanese french belgian)

  validates :address, :name, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
end

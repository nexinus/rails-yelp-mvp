class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # A restaurant must have at least a name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end

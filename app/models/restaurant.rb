class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  # A restaurant must have at least a name, an address and a category.
  validates :name, :address, presence: `true`
  # validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  validates :category, inclusion: { in: CATEGORIES }
end

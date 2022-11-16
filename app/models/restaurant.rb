class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY, message: '%{value} is not a valid category' }
end

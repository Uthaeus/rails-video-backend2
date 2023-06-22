class Technology < ApplicationRecord
  belongs_to :portfolio_item

  validates :name, presence: true
end

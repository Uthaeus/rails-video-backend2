class PortfolioComment < ApplicationRecord
  belongs_to :portfolio_item
  validates_presence_of :content
end

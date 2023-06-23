class PortfolioComment < ApplicationRecord
  belongs_to :portfolio_item
  validates_presence_of :content, { minLength: 3, message: "must be at least 3 characters long"}
end

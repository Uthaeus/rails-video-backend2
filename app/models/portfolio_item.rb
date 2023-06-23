class PortfolioItem < ApplicationRecord
    validates_presence_of :title, :description

    mount_uploader :main_image, PortfolioUploader
    mount_uploader :thumb_image, PortfolioUploader

    has_many :technologies
    has_many :portfolio_comments
end

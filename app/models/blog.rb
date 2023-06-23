class Blog < ApplicationRecord

    validates :title, presence: true
    validates :body, presence: true

    mount_uploader :image, BlogUploader

    belongs_to :category 

    has_many :blog_comments, dependent: :destroy
end

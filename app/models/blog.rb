class Blog < ApplicationRecord

    validates :title, presence: true
    validates :body, presence: true

    mount_uploader :image, BlogUploader

    has_many :blog_comments, dependent: :destroy
end

class Blog < ApplicationRecord

    validates :title, presence: true
    validates :body, presence: true

    mount_uploader :image, BlogUploader
end

class Blog < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :body, presence: true

    mount_uploader :image, BlogUploader
end

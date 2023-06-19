class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :description, :video_url

  mount_uploader :image, PostUploader
end

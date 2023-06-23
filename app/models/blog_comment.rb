class BlogComment < ApplicationRecord
  belongs_to :blog
  validates :content, presence: true, length: { minimum: 3 }
end

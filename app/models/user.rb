class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  validates_presence_of :email, :username

  mount_uploader :avatar, AvatarUploader

  has_many :posts, dependent: :destroy
  has_many :portfolio_comments, dependent: :destroy
end

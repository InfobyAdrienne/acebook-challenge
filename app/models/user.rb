class User < ApplicationRecord
  has_secure_password
  has_one_attached :avatar
  has_many :posts
  has_many :comments
  has_many :likes
  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
end

class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end

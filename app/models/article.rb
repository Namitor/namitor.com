class Article < ApplicationRecord
  has_many :comments
  validates :user, presence: true
end

class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :isPublic, presence: true
  validates :content, presence: true
  validates :publishDate, presence: false
end

class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :isPublic, presence: false
  validates :content, presence: true
  validates :publishDate, presence: false
  validates :view_count, presence: true
end

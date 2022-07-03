class Post < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks

  validates :title, :subtitle, :content, :read_time, presence: true
  validates :title, length: { in: 5..30 }
  validates :subtitle, length: { maximum: 100 }
  validates :read_time, numericality: true
end

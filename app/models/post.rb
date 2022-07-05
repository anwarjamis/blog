class Post < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks

  validates :title, :subtitle, :medium_url, :read_time, presence: true
  validates :title, length: { in: 5..50 }
  validates :subtitle, length: { maximum: 200 }
  validates :read_time, numericality: true
end

class Category < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :posts, through: :bookmarks

  validates :name, presence: true
end

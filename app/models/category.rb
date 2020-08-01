class Category < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 25}
  validates_uniqueness_of :name
  has many :article_categories
  has many :articles, through: :article_categories
end
class Category < ApplicationRecord
  has_many :topics_categories
  has_many :topics, through: :topics_categories
end

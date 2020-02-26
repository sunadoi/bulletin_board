class Topic < ApplicationRecord
  belongs_to :user
  has_many :responses
  has_many :topics_categories
  has_many :categories, through: :topics_categories
end

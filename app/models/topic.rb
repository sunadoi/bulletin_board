class Topic < ApplicationRecord
  belongs_to :user
  has_many :responses
  accepts_nested_attributes_for :responses, allow_destroy: true
  has_many :topics_categories
  has_many :categories, through: :topics_categories

  validates :title, presence: true
end

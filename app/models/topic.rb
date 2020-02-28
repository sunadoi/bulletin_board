class Topic < ApplicationRecord
  belongs_to :user
  has_many :responses
  accepts_nested_attributes_for :responses, allow_destroy: true
  has_many :topics_categories
  has_many :categories, through: :topics_categories

  validates :title, presence: true

  def self.search(search)
    Topic.where('title LIKE(?)', "%#{search}%") + Response.where('content LIKE(?)', "%#{search}%")
  end
end

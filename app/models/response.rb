class Response < ApplicationRecord
  belongs_to :topic, optional: true
  belongs_to :user, optional: true

  validates :content, presence: true
end

class Resource < ApplicationRecord
  # Associations
  belongs_to :course

  # Validations
  validates :title, presence: true
  validates :url, presence: true, format: { with: /\A(http|https):\/\/[^\s]+\z/, message: "must be a valid URL" }
end

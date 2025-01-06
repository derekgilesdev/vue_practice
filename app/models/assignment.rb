class Assignment < ApplicationRecord
  # Associations
  belongs_to :course

  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
end

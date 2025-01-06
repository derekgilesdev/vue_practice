class Enrollment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :course

  # Validations
  validates :user_id, presence: true, uniqueness: { scope: :course_id, message: "is already enrolled in this course" }
  validates :course_id, presence: true
end

class User < ApplicationRecord
  has_secure_password

  # Associations
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :instructed_courses, class_name: "Course", foreign_key: "instructor_id"

  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role, presence: true, inclusion: { in: %w[student instructor] }

  # Enum for roles
  enum :role, [:student, :instructor]
end

class Course < ApplicationRecord
  # Associations
  belongs_to :instructor, class_name: "User"
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments, source: :user
  has_many :resources, dependent: :destroy
  has_many :assignments, dependent: :destroy

  # Validations
  validates :title, presence: true
  validates :instructor_id, presence: true
end
